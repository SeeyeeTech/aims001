#!/usr/bin/env python3
"""复现三类合成反例；只检查材料支持与执行证据，不测试教学效果。"""
import json
from pathlib import Path

cases = json.loads(Path(__file__).with_name("cases.json").read_text())["cases"]


def supported_facts(case):
    if "available_material" in case:
        return case["available_material"]
    if "documents" in case:
        facts = {}
        for document in case["documents"]:
            for field in document.get("replaces", []):
                facts.pop(field, None)
            facts.update(document["facts"])
        return facts
    facts = {}
    for event in case["tool_events"]:
        if event["status"] == "success":
            if event["tool"] == "write_file":
                facts["file_written"] = True
            elif event["tool"] == "send_notification":
                facts["notification_sent"] = True
    return facts


for case in cases:
    supported = supported_facts(case)
    bad = [key for key, value in case["draft"].items()
           if key not in supported or supported[key] != value]
    still_bad = [key for key, value in case["repaired"].items()
                 if key not in supported or supported[key] != value]
    if not bad or still_bad:
        raise SystemExit(f"反例或预设修复不成立：{case['id']}")
    print(f"{case['id']}: 无依据/矛盾项={','.join(bad)}；预设修复未越过证据边界")

print("三类反例成立；这是合成材料走查，不是模型测评或学员试教。")
