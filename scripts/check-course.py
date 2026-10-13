#!/usr/bin/env python3
"""检查核心意向无模板占位，以及课程文件的本地 Markdown 链接。"""
from pathlib import Path
import re
import sys

root = Path(__file__).resolve().parent.parent
errors = []
for name in ("intent", "real", "cog", "meta"):
    path = root / ".42cog" / f"{name}.md"
    if not path.is_file():
        errors.append(f"缺少 {path.relative_to(root)}")
        continue
    content = path.read_text()
    if not content.strip() or "待 AI 起草" in content or "{{" in content:
        errors.append(f"未填写 {path.relative_to(root)}")

for path in [root / "README.md", *sorted((root / "lectures").rglob("*.md"))]:
    for target in re.findall(r"\[[^\]]*\]\(([^)]+)\)", path.read_text()):
        if target.startswith(("https://", "http://", "#")):
            continue
        local = target.split("#", 1)[0]
        if local and not (path.parent / local).exists():
            errors.append(f"{path.relative_to(root)}: 链接不存在 {target}")

if errors:
    print("\n".join(errors), file=sys.stderr)
    sys.exit(1)
print("意向填写与本地课程链接检查通过；教学实效需试教验证。")
