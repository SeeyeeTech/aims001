#!/usr/bin/env python3
"""下载固定版本的官方参考模块到忽略区；已有不同内容时报错，不覆盖。"""
import hashlib
import json
from pathlib import Path
import urllib.request

root = Path(__file__).resolve().parents[3]
folder = root / "_tmp/20261013-foundation-research/reference"
package = folder / "skills_ref"
package.mkdir(parents=True, exist_ok=True)
revision = "69ef37e9424c0a7ea9dd2293b559e43ec8176379"
url = f"https://api.github.com/repos/agentskills/agentskills/contents/skills-ref/src/skills_ref?ref={revision}"
with urllib.request.urlopen(url, timeout=20) as response:
    entries = json.load(response)
records = []
for entry in entries:
    name = entry["name"]
    if entry["type"] != "file" or not name.endswith(".py"):
        continue
    assert Path(name).name == name
    source = f"https://raw.githubusercontent.com/agentskills/agentskills/{revision}/skills-ref/src/skills_ref/{name}"
    with urllib.request.urlopen(source, timeout=20) as response:
        data = response.read()
    path = package / name
    if path.exists():
        if path.read_bytes() != data:
            raise SystemExit(f"已有文件内容不同，未覆盖：{path}")
    else:
        path.write_bytes(data)
    records.append({"path": str(path.relative_to(root)), "url": source, "sha256": hashlib.sha256(data).hexdigest()})
receipt = {"revision": revision, "license": "Apache-2.0", "files": records}
receipt_path = folder / "receipt.json"
if receipt_path.exists():
    if json.loads(receipt_path.read_text()) != receipt:
        raise SystemExit("已有来源回执不同，未覆盖；请先核对。")
else:
    receipt_path.write_text(json.dumps(receipt, indent=2) + "\n")
print(f"已准备 {len(records)} 个固定版本模块；来源与哈希回执在忽略区，未克隆仓库。")
