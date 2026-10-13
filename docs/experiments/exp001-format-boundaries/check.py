"""有界格式反例；仅标准库，不访问网络，不修改原件。"""
import csv
import io
import json
import tempfile
from pathlib import Path

with tempfile.TemporaryDirectory() as folder:
    path = Path(folder) / 'sample.txt'
    signature = b'\x89PNG\r\n\x1a\n'
    path.write_bytes(signature)
    assert path.read_bytes() == signature
    try:
        path.read_text(encoding='utf-8')
    except UnicodeDecodeError:
        pass
    else:
        raise AssertionError('二进制签名意外可按 UTF-8 读取')
print('PASS 后缀 TXT 不改变 PNG 签名字节（仅签名样本，非完整图片）')
rows = list(csv.reader(io.StringIO('id,note\n001,"甲,乙"\n')))
assert rows[1] == ['001', '甲,乙']
assert str(int(rows[1][0])) == '1'
print('PASS CSV 引号保留字段逗号；转整数会丢前导零')
record = json.loads('{"date":"2026-02-30"}')
from datetime import date
try:
    date.fromisoformat(record['date'])
except ValueError:
    pass
else:
    raise AssertionError('不存在的日期未被识别')
print('PASS JSON 语法合法不证明日期合法')
