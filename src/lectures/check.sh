#!/usr/bin/env bash
# 仅检查课程大纲；可传入一份候选大纲，不修改文件。
set -euo pipefail
TASK_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
python3 - "$TASK_DIR" "$@" <<'PY'
from pathlib import Path
import re
import subprocess
import sys

here = Path(sys.argv[1])
if len(sys.argv) > 3:
    print("用法：bash src/lectures/check.sh [候选大纲.md]", file=sys.stderr)
    sys.exit(2)
target = Path(sys.argv[2]) if len(sys.argv) == 3 else here / "outline.md"

try:
    standard = (here / "standard.md").read_text(encoding="utf-8")
    negatives = (here / "negatives.md").read_text(encoding="utf-8")
    content = target.read_text(encoding="utf-8")
    match = re.search(r"(?m)^基线提交：`([0-9a-f]{40})`$", standard)
    if match is None:
        raise ValueError("standard.md 缺少有效的基线提交")
    baseline = subprocess.check_output(
        ["git", "-C", str(here), "show", match[1] + ":src/lectures/outline.md"],
        text=True, encoding="utf-8", stderr=subprocess.PIPE,
    )
    patterns_match = re.search(r"(?ms)^```PATTERNS\n(.*?)^```$", negatives)
    checklist_match = re.search(r"(?ms)^```CHECKLIST\n(.*?)^```$", negatives)
    if patterns_match is None or checklist_match is None:
        raise ValueError("negatives.md 缺少 PATTERNS 或 CHECKLIST")
    patterns = []
    for line in patterns_match[1].splitlines():
        if not line.strip() or line.lstrip().startswith("#"):
            continue
        pattern, note = line.split("\t", 1)
        patterns.append((re.compile(pattern), note))
    checklist = [line for line in checklist_match[1].splitlines() if line.strip()]
    if not patterns or not checklist:
        raise ValueError("护栏或人工清单为空")
except (OSError, ValueError, re.error, subprocess.CalledProcessError) as exc:
    print(f"检查器无法执行：{exc}", file=sys.stderr)
    sys.exit(2)

def lectures(doc):
    return re.findall(
        r"(?ms)^## (第 (\d+) 讲 · [^\n]+)\n(.*?)(?=^## |\Z)", doc
    )

expected = lectures(baseline)
actual = lectures(content)
if len(expected) != 6:
    print("基线不是六讲大纲，请先核对标准。", file=sys.stderr)
    sys.exit(2)
errors = []
if len(actual) != 6:
    errors.append(f"N1：核心讲次为 {len(actual)}，应为 6")
if [item[0] for item in actual] != [item[0] for item in expected]:
    errors.append("N2：讲题或次序与基线不一致")

item_pattern = re.compile(r"^- \*\*(\d+\.\d+ [^*]+)\*\*：(.+)$")
counts = []
for title, number, body in actual:
    lines = [line for line in body.splitlines() if line.strip()]
    items = [item_pattern.fullmatch(line) for line in lines]
    original = next((item for item in expected if item[1] == number), None)
    if original:
        original_names = [
            item_pattern.fullmatch(line)[1]
            for line in original[2].splitlines() if line.strip()
        ]
        names = [item[1] for item in items if item]
        if names != original_names:
            errors.append(f"N3：第 {number} 讲的小节名称或编号与基线不一致")
    if any(item is None for item in items):
        errors.append(f"N5：第 {number} 讲有格式不符的内容或独立解释段")
    size = len(re.sub(r"[\s*#]", "", title + "\n" + body))
    counts.append(f"{number}：{size}")
    if size > 200:
        errors.append(f"N4：第 {number} 讲为 {size} 字符，超过 200")
    for pattern, note in patterns:
        if pattern.search(title + "\n" + body):
            errors.append(f"N6：第 {number} 讲命中「{note}」")

print("各讲字符数（含讲题、编号与标点，去除排版符号和空白）：" + "／".join(counts))
print("人工核对清单（脚本不判）：")
for item in checklist:
    print("  □ " + item)
if errors:
    print("\n".join(errors), file=sys.stderr)
    sys.exit(1)
print("大纲结构与字面护栏通过；表达定标和教学实效仍需人判断。")
PY
