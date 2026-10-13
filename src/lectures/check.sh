#!/usr/bin/env bash
# 检查课程大纲的结构及已确认知识词组；不修改文件。
set -euo pipefail
TASK_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
python3 - "$TASK_DIR" "$@" <<'PY'
import json
from pathlib import Path
import re
import sys

here = Path(sys.argv[1])
if len(sys.argv) > 3:
    print("用法：bash src/lectures/check.sh [候选大纲.md]", file=sys.stderr)
    sys.exit(2)
target = Path(sys.argv[2]) if len(sys.argv) == 3 else here / "outline.md"

def fence(doc, name):
    match = re.search(r"(?ms)^```" + name + r"\n(.*?)^```$", doc)
    if match is None:
        raise ValueError("缺少 " + name + " 检查块")
    return match[1]

try:
    standard = (here / "standard.md").read_text(encoding="utf-8")
    negatives = (here / "negatives.md").read_text(encoding="utf-8")
    content = target.read_text(encoding="utf-8")
    required = json.loads(fence(standard, "REQUIRED_KNOWLEDGE"))
    if not isinstance(required, dict) or not required:
        raise ValueError("已确认知识词组为空")
    knowledge = []
    for label, spec in required.items():
        if not isinstance(spec, dict) or set(spec) != {"lecture", "patterns"}:
            raise ValueError("知识词组须包含 lecture 与 patterns：" + label)
        lecture, expressions = spec["lecture"], spec["patterns"]
        if type(lecture) is not int or not 1 <= lecture <= 6:
            raise ValueError("知识词组的讲次须为 1—6：" + label)
        if not isinstance(expressions, list) or not expressions:
            raise ValueError("知识词组必须为非空列表：" + label)
        knowledge.append((label, lecture, [re.compile(p, re.I) for p in expressions]))
    patterns = []
    for line in fence(negatives, "PATTERNS").splitlines():
        if not line.strip() or line.lstrip().startswith("#"):
            continue
        pattern, note = line.split("\t", 1)
        patterns.append((re.compile(pattern), note))
    checklist = [line for line in fence(negatives, "CHECKLIST").splitlines() if line.strip()]
    if not patterns or not checklist:
        raise ValueError("护栏或人工清单为空")
except (OSError, ValueError, TypeError, re.error) as exc:
    print(f"检查器无法执行：{exc}", file=sys.stderr)
    sys.exit(2)

actual = re.findall(r"(?ms)^## (第 (\d+) 讲 · [^\n]+)\n(.*?)(?=^## |\Z)", content)
errors = []
if [int(item[1]) for item in actual] != list(range(1, 7)):
    errors.append("N1：核心课须为顺序排列的第 1 至第 6 讲")
if actual and ("最小全局认识" not in actual[0][0] or "综合" not in actual[-1][0]):
    errors.append("N2：首讲须建立最小全局认识，末讲须综合应用")

item_pattern = re.compile(r"^- \*\*(\d+)\.(\d+) ([^*]+)\*\*：(.+)$")
counts = []
total = 0
for title, number, body in actual:
    lines = [line for line in body.splitlines() if line.strip()]
    items = [item_pattern.fullmatch(line) for line in lines]
    if any(item is None for item in items):
        errors.append(f"N5：第 {number} 讲有格式不符的内容或独立解释段")
    ids = [(item[1], int(item[2])) for item in items if item]
    if not ids or any(a != number for a, _ in ids) or [b for _, b in ids] != list(range(1, len(ids) + 1)):
        errors.append(f"N3：第 {number} 讲小节为空、编号重复或不连续")
    total += len(ids)
    size = len(re.sub(r"[\s*#]", "", title + "\n" + body))
    counts.append(f"{number}：{size}")
    if size > 200:
        errors.append(f"N4：第 {number} 讲为 {size} 字符，超过 200")
    for pattern, note in patterns:
        if pattern.search(title + "\n" + body):
            errors.append(f"N6：第 {number} 讲命中「{note}」")

lecture_bodies = {int(number): body for _, number, body in actual}
for label, lecture, expressions in knowledge:
    body = lecture_bodies.get(lecture, "")
    if any(pattern.search(body) is None for pattern in expressions):
        errors.append(f"N3：第 {lecture} 讲缺少已确认知识词组「{label}」")

print(f"共 {total} 个小节；各讲字符数（含讲题、编号与标点，去除排版符号和空白）：" + "／".join(counts))
print("人工核对清单（脚本不判）：")
for item in checklist:
    print("  □ " + item)
if errors:
    print("\n".join(errors), file=sys.stderr)
    sys.exit(1)
print(f"结构与 {len(knowledge)} 组知识词组及讲次归属检查通过；知识关系、深度与教学实效仍需人判断。")
PY
