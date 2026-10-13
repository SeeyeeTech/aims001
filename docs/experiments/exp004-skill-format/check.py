#!/usr/bin/env python3
"""用指定的官方参考校验器验证合成 Skill 文件；不运行 Skill。"""
import argparse
import hashlib
import json
from pathlib import Path
import sys
from tempfile import TemporaryDirectory

parser = argparse.ArgumentParser()
parser.add_argument("--reference-dir", required=True, type=Path)
parser.add_argument("--dependencies", required=True, type=Path)
args = parser.parse_args()
reference = args.reference_dir.resolve()
receipt = json.loads((reference / "receipt.json").read_text())
revision = "69ef37e9424c0a7ea9dd2293b559e43ec8176379"
assert receipt["revision"] == revision, "参考校验器版本不同，不能沿用本轮结论"
for entry in receipt["files"]:
    file = reference / "skills_ref" / Path(entry["path"]).name
    assert hashlib.sha256(file.read_bytes()).hexdigest() == entry["sha256"], file
sys.path.insert(0, str(args.dependencies.resolve()))
sys.path.insert(0, str(reference))
from skills_ref.validator import validate

cases = json.loads(Path(__file__).with_name("cases.json").read_text())
for case in cases:
    with TemporaryDirectory(prefix="aims-skill-format-") as temporary:
        folder = Path(temporary) / case["folder"]
        folder.mkdir()
        (folder / case["filename"]).write_text(case["content"], encoding="utf-8")
        problems = validate(folder)
        valid = not problems
        assert valid == case["expected_valid"], (case["id"], problems)
        if "error_contains" in case:
            assert any(case["error_contains"] in problem for problem in problems), (case["id"], problems)
        print(case["id"] + "：" + ("格式通过" if valid else "格式拒绝") + ("；" + " | ".join(problems) if problems else ""))
print(f"{len(cases)} 个合成对照符合预期；仅验证参考校验器的格式行为，不验证加载、执行、学习或成果质量。")
