# AI Missing Semester

课程受众与学习目标见下方意向书；以工作坊形式补齐必要前置知识，通过失败诊断、对照实验与修复练习提升实际使用能力。

课程方向与验收标准的唯一正本是 [意向书](.42cog/intent.md)，具体教学安排见 [课程大纲](src/lectures/outline.md)。

## 课程结构

- 核心课 **6 讲**：第一讲建立最小全局认识，最后一讲综合实践。
- 主题选修 **不超过 4 讲**，按学习者需要选择。
- 每讲包含演示、实操、反馈与修改，学生带走可检查的成果。
- 每讲时长通过操作负荷测试确定。

逐讲主题与知识点维护在 [大纲](src/lectures/outline.md) 中，实操细节在样章阶段展开。

## 最终交付

| 交付物 | 使用方式 |
|---|---|
| Lecture 讲义 | 独立阅读，包含案例、操作说明、练习与答案说明 |
| 教学 PPTX | 教师带工作坊，包含演示、活动指令与讲者备注 |
| 交互自学网站 | 学习者在线完成任务，获得提示、检查反馈并重试 |

三种载体共享学习目标、案例与验收标准，具体要求见 [课程交付标准](specs/course.md)。

## 当前进度与入口

已按重新取证的六讲知识清单更新 [课程大纲](src/lectures/outline.md)，首讲建立最小全局认识。完整讲义、PPTX 和网站尚未制作。详细进度以 [状态板](state/board.md) 为准。

| 入口 | 内容 |
|---|---|
| [课程大纲](src/lectures/outline.md) | 六讲知识点、选修主题与交付边界 |
| [研究索引](docs/research/README.md) | 知识点分层、大纲设计研究与取舍 |
| [实验索引](docs/experiments/README.md) | 已执行的小实验及证据边界 |
| [演化记录](state/changelog.md) | 重要调整及其原因 |

## 外部参考

本地课程原件索引见 [vault/raw/README.md](vault/raw/README.md)，AICourse 的来源与阅读入口见 [登记](vault/truth/aicourse-reference.md)。课程关系维护在 [现实约束](.42cog/real.md)。

Missing Semester 中文版参考仓库在本地位于 `resources/missing-semester-cn.github.io/`，用于参考课程组织、讲义、练习和网站结构。仓库保留上游 Git 历史，按只读参考使用。

参考源索引见 [resources/README.md](resources/README.md)，获取提交、许可说明与阅读入口见 [来源登记](vault/truth/missing-semester-cn-reference.md)。第三方参考仓库本地留存，由主项目 Git 忽略。

## 项目目录

| 位置 | 用途 |
|---|---|
| [AGENTS.md](AGENTS.md)、[.42cog/](.42cog/)、[specs/](specs/) | 开工协议、项目元数据与产出标准 |
| [src/lectures/](src/lectures/) | 课程作品，当前为大纲；未来按一讲组织内容 |
| [resources/](resources/README.md) | 第三方参考仓库与材料 |
| [vault/](vault/)、`notes/` | 原始依据、来源核验与人类笔记 |
| [skills/](skills/README.md)、[scripts/](scripts/README.md) | 工作方法与确定性检查 |
| [docs/](docs/)、[state/](state/board.md) | 研究、计划、实验与当前状态 |
| `_build/`、`_tmp/`、`_archive/` | 构建和过程材料，不入库 |

## 本地检查

检查运行时版本见 [.python-version](.python-version)。在项目根目录执行：

```bash
bash scripts/check-tools.sh
python3 scripts/check-manifests.py
python3 scripts/check-course.py
```

这些检查验证工具、插件清单与课程文件结构；教学效果通过教师评审和目标学员试教验证。AI 开工与协作规则见 [AGENTS.md](AGENTS.md)。
