# AICourse · 本地参考源登记

- 原件位置：`/Users/nv/proj.xt.com/AICourse`。
- 本地入口：`vault/raw/AICourse`；相对软链接指向 `../../../AICourse`。
- 登记日期：2026-10-13；接入方式：链接已有目录，不复制原件。
- 课程关系与参考范围：见 [现实约束](../../.42cog/real.md)。
- 保存方式：原件只读使用；软链接由本项目 Git 忽略，来源登记入库。链接随原目录变化，不代表固定版本快照。

## 阅读入口（需本地原件）

- [项目 README](../raw/AICourse/README.md)：系列课程地图。
- [AI101 课程介绍](../raw/AICourse/courses/ai101/README.md)：课程规划与学习目标；各模块材料见下表。

## AI101 模块索引

核对日期：2026-10-13。按模块主题定位，兼收课程规划与现有讲义；下表的内容说明是阅读导航。

课程 README 的六讲规划与实际文件编号已有差异：`lesson03` 是 Skill（下），`lesson04` 是 MCP。当前讲义文件共四份，不能用 README 的讲次推断文件内容；Hook、Agent、Command 与未来展望尚未发现独立讲义。讲义中涉及这些主题的概述仍列为入口。

| 模块 | 关注什么 | 原件入口与阅读定位 | 材料状态 |
|---|---|---|---|
| 混合智能与全局框架 | LLM、Harness、Context、Human 的关系；从对话到工具调用、项目上下文与任务协作 | [lesson01 讲义](../raw/AICourse/courses/ai101/lessons/lesson01/lecture.md)：L7 四要素、L27 工具调用、L68 项目上下文、L98 Harness、L136 工具链、L156 原型案例 | 已有讲义与 HTML 课件 |
| Skill：理解、选择、使用与管理 | 经验如何封装为可复用方法；结构、触发、加载、质量判断、安装与管理 | [lesson02 讲义](../raw/AICourse/courses/ai101/lessons/lesson02/lecture.md)：L12 定义与结构、L83 工作原理、L154 质量判据、L215 使用、L273 管理、L351 演示 | 已有讲义与 HTML 课件 |
| Skill：制作与评价 | 寻找既有方法、按需求整合、从实际流程提炼，再评价触发与任务效果 | [lesson03 讲义](../raw/AICourse/courses/ai101/lessons/lesson03/lecture.md)：L9 制作路径、L40 评价、L47 公众号发布演示题名 | 已有短稿与 HTML 课件；讲义的演示部分仅有题名 |
| MCP：连接外部能力 | 工具、资源与提示；调用链、选型、场景、配置、权限、安全与开发 | [lesson04 讲义](../raw/AICourse/courses/ai101/lessons/lesson04/lecture.md)：L15 定义、L143 原理、L266 筛选、L384 场景、L539 配置、L677 安全、L718 开发选学、L785 演示 | 已有讲义与 HTML 课件分段源文件 |
| Hook：关键节点自动触发 | 在事件发生时触发检查或动作，作为过程控制机制 | [AI101 课程规划](../raw/AICourse/courses/ai101/README.md)：第 3 讲；[lesson02 讲义](../raw/AICourse/courses/ai101/lessons/lesson02/lecture.md)：L143 扩展机制比较 | 规划与概述，未见独立讲义 |
| Agent：多步骤任务协作 | 计划、调用、反馈与调整；上下文、任务拆分、权限和人的介入 | [AI101 课程规划](../raw/AICourse/courses/ai101/README.md)：第 4 讲；[lesson01 讲义](../raw/AICourse/courses/ai101/lessons/lesson01/lecture.md)：L7 全局关系、L98 Harness；[lesson02 讲义](../raw/AICourse/courses/ai101/lessons/lesson02/lecture.md)：L143 机制比较 | 规划与概述，未见独立讲义 |
| Command 与高阶工作流 | 固定操作入口；组合项目说明、上下文、执行与验证方法 | [AI101 课程规划](../raw/AICourse/courses/ai101/README.md)：第 5 讲；[lesson02 讲义](../raw/AICourse/courses/ai101/lessons/lesson02/lecture.md)：L143 机制比较 | 规划与概述，未见独立讲义 |
| AI 未来与人机关系 | 更长任务中的判断与责任；人在机回环和机在人回环 | [AI101 课程规划](../raw/AICourse/courses/ai101/README.md)：第 6 讲；[lesson01 讲义](../raw/AICourse/courses/ai101/lessons/lesson01/lecture.md)：L3 人机关系 | 规划与概述，未见独立讲义 |

## 配套材料索引

| 所属模块 | 原件入口 | 用途 |
|---|---|---|
| 混合智能 | [课前介绍](../raw/AICourse/courses/ai101/lessons/lesson01/introduction.md)、[HTML 课件](../raw/AICourse/courses/ai101/lessons/lesson01/slides/hybrid-intelligence-keynote.html)、[课件提纲](../raw/AICourse/courses/ai101/lessons/lesson01/slides/outline-01.md) | 授课预告、演示与结构参考 |
| Skill 理解与使用 | [HTML 课件](../raw/AICourse/courses/ai101/lessons/lesson02/slides/skill-course-slides.html)、[演示目录](../raw/AICourse/courses/ai101/lessons/lesson02/demo/) | 安装案例，以及美容行业市场调研和竞争分析示例材料 |
| Skill 制作与评价 | [HTML 课件](../raw/AICourse/courses/ai101/lessons/lesson03/slides/lesson03-skill-workflow-slides.html) | 制作路径与工作流演示参考 |
| MCP | [课前介绍](../raw/AICourse/courses/ai101/lessons/lesson04/introduction.md)、[课件源目录](../raw/AICourse/courses/ai101/lessons/lesson04/slides/) | PDF 阅读演示说明，以及封面、原理、筛选、场景、配置、安全、开发和演示等 HTML 分段 |
| 全课程 | [练习目录说明](../raw/AICourse/courses/ai101/exercises/README.md) | 当前仅有收录约定，尚无独立练习文件；实际练习先从各讲讲义定位 |

行号以本次核对的原件为准，原件更新后重新定位。材料存在不代表内容已经验证；本索引用于查找参考，具体产品机制与操作在采用时另行核验。
