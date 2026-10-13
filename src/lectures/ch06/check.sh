#!/usr/bin/env bash
# 只检查大作业设计卡，不判学员成果或教学效果。
set -euo pipefail
TASK_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
python3 - "$TASK_DIR" "$@" <<'PY'
from pathlib import Path
import re
import sys

here = Path(sys.argv[1])
if len(sys.argv) > 3:
    print("用法：bash src/lectures/ch06/check.sh [候选任务卡.md]", file=sys.stderr)
    sys.exit(2)
target = Path(sys.argv[2]) if len(sys.argv) == 3 else here / "assignment.md"
def fence(text, name):
    match = re.search(r"(?ms)^\x60\x60\x60" + name + r"\n(.*?)^\x60\x60\x60$", text)
    if match is None:
        raise ValueError("缺少 " + name)
    return match[1]
try:
    content = target.read_text(encoding="utf-8")
    guard = (here / "negatives.md").read_text(encoding="utf-8")
    patterns = [line.split("\t", 1) for line in fence(guard, "PATTERNS").splitlines() if line.strip()]
    patterns = [(re.compile(pattern), note) for pattern, note in patterns]
    checklist = [line for line in fence(guard, "CHECKLIST").splitlines() if line.strip()]
    if not patterns or not checklist:
        raise ValueError("护栏或清单为空")
except (OSError, ValueError, re.error) as exc:
    print(f"检查器无法执行：{exc}", file=sys.stderr)
    sys.exit(2)
errors = []
for title in ("任务", "材料", "交付", "AI 协作", "前五讲如何用到", "验收"):
    if not re.search(r"(?m)^## " + re.escape(title) + r"$", content):
        errors.append("缺少任务设计章节：" + title)
for number in range(1, 6):
    if not re.search(r"(?m)^\| " + str(number) + r" \|", content):
        errors.append(f"缺少第 {number} 讲的知识对应")
size = len(re.sub(r"[\s*#]", "", content))
if size > 1800:
    errors.append(f"任务卡 {size} 字符，超过 1800")
assessment = re.search(r"(?ms)^## 验收\n(.*?)(?=^## |\Z)", content)
if assessment is None or any(word not in assessment[1] for word in ("变更", "验证", "解释")):
    errors.append("验收缺少变更、验证或知识解释")
for pattern, note in patterns:
    if pattern.search(content):
        errors.append(note)
print(f"任务卡 {size} 字符；人工核对：")
for item in checklist:
    print("  □ " + item)
if errors:
    print("\n".join(errors), file=sys.stderr)
    sys.exit(1)
print("设计结构与字面护栏通过；可教性、知识理解及实效需人验证。")
PY
