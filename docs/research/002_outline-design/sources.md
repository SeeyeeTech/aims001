# 来源登记

2026-10-13 核验。事实和教学推断分开；不读取历史会话、不新增外部克隆、不外发项目材料。原件在本轮被另一路按用户纠正移至 `resources/missing-semester-cn.github.io/`；提交仍为 `4f2fedde4f519c0466670b055efdd76af248574e`，工作区干净。下文以新路径为准。

## 自有积累

| ID | 原件与定位 | 仍算数的范围与复用 |
|---|---|---|
| O1 | `.42cog/intent.md:9`、`:19`、`:20`、`:35`、`:36` | 零先修、任务验收、先定大纲和三载体关系；直接遵守，不复制方向句 |
| O2 | `.42cog/real.md:5`、`:7`、`:8`；`docs/research/001_lecture-knowledge/decision.md:31` | 已确认课数与深度；课时、设备未知，不能替用户认定 |
| O3 | Git `be38241:lectures/outline.md:31`；本轮迁入前的工作区旧稿（改动前差异已保留） | 旧稿主任务和判据可复用；旧稿用于比较，不能把其粒度当标准。新逐节正文以 `src/lectures/outline.md` 为准 |
| O4 | `docs/research/001_lecture-knowledge/knowledge-map.md:43`、`:78`、`:83`、`:135`；`specs/course.md:5`、`:7` | 文件、Markdown、恢复已有库存，教学先后已有线索；改编为节次，不照原表逐行加课 |

只查本项目及两次本地提交；没有已有的零基础试教数据。自有方案可改编，不自动当已证明有效的方案。

## 他人积累

以下本地路径均相对 `resources/missing-semester-cn.github.io/`。网页只核查官方原文；译本与英文页的不同均不拿来推断原作者未说明的意图。

| ID | 源头与定位 | 官方明载或原件事实；本轮借鉴范围 |
|---|---|---|
| R1 | [2020 课次](https://missing.csail.mit.edu/2020/)、[2026 课次](https://missing.csail.mit.edu/2026/)；`_2020/index.html:10`、`_2026/index.md:11`、`_config.yml:19` | 2020 为 11 讲，2026 为 9 讲；工具与技术主题是组织单位。网页列表从讲义的日期和标题生成，不能只对比首页短标题 |
| R2 | [2020 Shell](https://missing.csail.mit.edu/2020/course-shell/)；`_2020/course-shell.md:28`、`:78`、`:164`、`:215`、`:251` | 解释解析与输入输出，给命令、输出、权限错误及练习；借鉴机制与操作相连，不移植 Unix 前置 |
| R3 | [2020 Git](https://missing.csail.mit.edu/2020/version-control/)；`_2020/version-control.md:32`、`:178`、`:188`、`:359`、`:432` | 从数据模型到暂存及操作；练真实历史、修改与恢复。部分细讲依赖视频或延伸资源；`:193–344` 位于 Liquid comment，不能当网页自学正文 |
| R4 | [2026 Shell](https://missing.csail.mit.edu/2026/course-shell/)；`_2026/course-shell.md:29`、`:31`、`:325`、`:327`；`_layouts/lecture.html:22`；`_2020/qa.md:13` | 基本独立但假定前讲内容；笔记不覆盖全部演示；开放练习暂无标准答案。共用网页布局，正文组织自由，没有统一强制验收模板 |
| R5 | [2026 Agentic Coding](https://missing.csail.mit.edu/2026/agentic-coding/)；`_2026/agentic-coding.md:16`、`:35`、`:47`、`:74`、`:92`、`:181`、`:186` | 接续开发环境，解释上下文与工具反馈，演示检查、纠偏；正文链接独立拆课 PR #344，练习允许按工具支持跳过。借鉴操作机制，不把编程背景迁入核心课 |
| R6 | [CMU Eberly：学习目标与课程设计](https://www.cmu.edu/teaching/designteach/design/learningobjectives.html)，Alignment / component skills / action verbs | 目标、评估与教学策略需一致，复杂能力拆成组件，目标落实为可观察动作；据此补我们的判据，不宣称短课效果 |
| R7 | [课程许可](https://missing.csail.mit.edu/license/)；本地 `license.md:9` | 原课标 CC BY-NC-SA 4.0；本轮只读借鉴设计方法，原创编排，不复制原课段落、代码或习题 |
| R8 | [VS Code 当前界面说明](https://code.visualstudio.com/docs/editing/getting-started/userinterface#_timeline-view)、[本地历史机制说明（1.66）](https://code.visualstudio.com/updates/v1_66#_local-history)，Timeline / Local history | 官方文档提供文件历史比较和恢复；作为 HTML 路径的候选恢复工具，课堂版本与设置仍须冒烟。不以 2022 发布说明证明当前各平台配置完全相同 |

R1—R5 是“要比的”，抽样深读机制、操作和练习；R6 是设计方法的“零件”；R7 只核查原件许可标注；R8 只核查候选编辑器的比较／恢复能力。本地 Git 中 2026 主要为整批同步与翻译提交；不能从译本同步历史还原原作者完整取舍过程。

## 本机走查

[exp002](../../experiments/exp002-outline-task/readme.md)：本项目新造的虚构材料，检查版本替代、材料内指令和未知字段；它是本轮做法，独立于上述两类来源。结论限定为一次离线任务设计走查。
