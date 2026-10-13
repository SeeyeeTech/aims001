# exp004 · Markdown 到 Skill 的格式依赖

日期：2026-10-13。状态：六个对照已运行，结果符合预期。研究入口见 [005](../../research/005_missing-foundations/README.md)。

假设：Markdown 是读写 Skill 内容的必要基础之一，还需理解元数据、文件名和目录；格式通过不能证明方法有效。

做法：用 [Agent Skills 官方参考校验器](https://github.com/agentskills/agentskills/tree/69ef37e9424c0a7ea9dd2293b559e43ec8176379/skills-ref) 实际检查 [六份合成文件](cases.json)。正文由本课自行编写；校验器指定模块下载在本地忽略区，未复制入库或克隆仓库。版本固定为该链接提交，依赖为 StrictYAML 1.7.3；来源 URL 与逐文件 SHA-256 见 `_tmp/20261013-foundation-research/reference/receipt.json`。

在项目根目录复跑（准备步骤只下载到忽略区，已有不同内容时停止；依赖不装进项目环境）：

```bash
python3 docs/experiments/exp004-skill-format/prepare.py
python3 -m pip install --target _tmp/20261013-foundation-research/deps \
  strictyaml==1.7.3 python-dateutil==2.9.0.post0 six==1.17.0
python3 docs/experiments/exp004-skill-format/check.py \
  --reference-dir _tmp/20261013-foundation-research/reference \
  --dependencies _tmp/20261013-foundation-research/deps
```

过程依赖不入库；没有依赖不能冒称复跑通过。需要清空过程目录时先保存人手改动，不使用强制覆盖重建。

观察项：纯正文、正确元数据、YAML 错误、目录名不符、扩展名不符和错误方法但格式合法。只检查文件格式，不调用模型或加载 Skill。

实际结果：纯正文、错误 YAML、错误目录和错误扩展名被拒绝；最小正确元数据通过；方法要求凭感觉补全未知的正文也通过。参考校验器只判格式，因此 Markdown 读写、元数据与目录、正文方法质量分别需要检查。

限制：参考库自述仅供演示；它的容错不代表所有宿主。六份合成文件不能证明学员普遍缺项、课时合适、掌握 Markdown 后就会写好 Skill，也不能证明格式通过后实际执行成功。
