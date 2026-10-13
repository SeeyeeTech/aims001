# 005 · 来源与使用限度

核验：2026-10-13。A＝可见课程或教程明确讲授；B＝规范或实际文件要求；C＝本课据依赖关系作出的教学取舍。A/B 不等于本课学员缺项或教学有效。

后续采用：用户明确原知识全部涵盖，并至少补 Git、浏览器；新增 S11–S14，内容已进入大纲。基础辨读与完整开发分开，不把每讲字数当操作负荷证明。

## 自有积累

| ID | 材料 | 本轮用途 |
|---|---|---|
| O1 | [意向书](../../../.42cog/intent.md)，本轮用户关于 Markdown 与非科班背景的说明 | 选题方向；不扩成编程先修或完整 Skill 制作课 |
| O2 | [当前大纲](../../../src/lectures/outline.md)与 [Git 表达参照](../../../src/lectures/standard.md) | 保留简短知识名称与说明；旧知识组合可以被新方向修正 |
| O3 | [首次知识库存](../001_lecture-knowledge/knowledge-map.md)，K12、K15–19、K34、K38–40 | 原稿曾有 Markdown、路径与格式，后来被工作流概括挤掉；可改编，不按旧排序加难 |
| O4 | [格式对照](../../experiments/exp001-format-boundaries/readme.md)与本轮 [exp004](../../experiments/exp004-skill-format/readme.md) | 实际文件与解析行为的有限证据；不代替学员数据 |

## 他人积累

| ID | 原始来源与定位 | 明载内容与本轮用法 |
|---|---|---|
| S1 | [MIT 2020 Markdown](https://missing.csail.mit.edu/2020/potpourri/#markdown)、[路径与 Shell](https://missing.csail.mit.edu/2020/course-shell/#navigating-in-the-shell)；[2026 Shell](https://missing.csail.mit.edu/2026/course-shell/#exercises)、[Configuration / Dependencies](https://missing.csail.mit.edu/2026/shipping-code/#configuration)、[版本与 Undo](https://missing.csail.mit.edu/2026/version-control/#basics)、[Agentic Coding 的模型机制](https://missing.csail.mit.edu/2026/agentic-coding/#how-ai-models-and-agents-work) | A：Markdown、路径、命令、参数、输出、配置、环境、版本及概率生成均有可见教学。面向 CS 学习者，只借最小机制；JSON/YAML 示例不当完整语法课 |
| S2 | [Agent Skills with Anthropic 课纲](https://www.deeplearning.ai/courses/agent-skills-with-anthropic)；[L4 公开笔记](https://github.com/https-deeplearning-ai/sc-agent-skills-files/blob/main/L4/reading_material_4.md)，SKILL.md File Structure、Practical Guidance、Evaluation；[L5](https://github.com/https-deeplearning-ai/sc-agent-skills-files/blob/main/L5/reading_material_5.md)、[L6](https://github.com/https-deeplearning-ai/sc-agent-skills-files/blob/main/L6/README.md) | A：文件结构、元数据／正文、分文件引用。B：使用 Markdown、YAML、JSON、命令和环境；基础语法覆盖未完整核验。面向 AI builders，后续的 API/SDK/开发工作流不搬来 |
| S3 | [CommonMark 语法简表](https://commonmark.org/help/) | B：标题、列表、强调、链接、引用和代码的读写规则。表格并非核心语法，方言差异只辨用途 |
| S4 | [Agent Skills 规范](https://agentskills.io/specification)，Directory structure、SKILL.md format、Progressive disclosure、File references | B：目录、YAML 元数据、Markdown 正文、按需加载及相对引用的明确依赖。C：把所需基础前置，而非把完整规范作为课堂目录 |
| S5 | [JSON 标准 RFC 8259 §3–5](https://www.rfc-editor.org/rfc/rfc8259.html#section-3) | B：对象、数组和基本值类型；仅用来读懂结构化结果和简单设置，不展开 JSON Schema |
| S6 | [YAML 1.2.2 §2.1](https://yaml.org/spec/1.2.2/#21-collections) | B：键值、列表、缩进组织结构；只改简单配置，不展开标签、锚点及序列化理论 |
| S7 | [Claude Academy：Tokens](https://academy.claude.com/tutorials/tokens-and-embeddings)，Tokens / Recap；[Context](https://academy.claude.com/tutorials/parametric-memory-and-context)，Where answers come from / The context window / Compaction / Written memory | A：文本单位、训练知识、本轮上下文、压缩与外部记忆。C：取能解释日常现象的部分，嵌入向量算法及产品容量数字不迁入 |
| S8 | [MCP 工具规范固定版](https://modelcontextprotocol.io/specification/2025-06-18/server/tools)，Tool definition / Calling tools / Error handling | B：工具名字、参数结构、返回及错误；借机制辨识，不讲连接协议实现。固定版本并非声称最新版本 |
| S9 | [AICourse 阅读入口](../../../vault/truth/aicourse-reference.md)；原件 lesson02/lecture.md L23–31、L48–70、L302–311；lesson01 L7–15 | 用户提供的参照按只读借鉴：明确用到 Markdown、目录、元数据、上下文与工具。产品数字、推荐和历史日期不作依据；例子有大小写混用等风险，以 S4 为规范依据 |
| S10 | [skills-ref 代码固定提交](https://github.com/agentskills/agentskills/tree/69ef37e9424c0a7ea9dd2293b559e43ec8176379/skills-ref)，parser.py / validator.py / README | 本轮实际运行的参考校验器；仅供演示，检验格式不检验正文方法质量 |
| S11 | [MIT Git](https://missing.csail.mit.edu/2026/version-control/)，Snapshots / Staging area / Branching and merging / Remotes / GitHub；[Pro Git 记录修改](https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository) | A：版本快照、工作区／暂存／提交、差异、分支合并与远端；Git 与 GitHub 区分明确。C：用于理解 AI 改动和恢复，不搬完整命令或多人开发流程 |
| S12 | MDN [Web 如何工作](https://developer.mozilla.org/en-US/docs/Learn_web_development/Getting_started/Web_standards/How_the_web_works)，Clients and servers / HTTP basics；[URL](https://developer.mozilla.org/en-US/docs/Learn_web_development/Howto/Web_mechanics/What_is_a_URL)；[开发者工具](https://developer.mozilla.org/en-US/docs/Learn_web_development/Howto/Tools_and_setup/What_are_browser_developer_tools)；Chrome [Network 教程](https://developer.chrome.com/docs/devtools/network/) | A/B：浏览器／服务器、网页资源、HTML/CSS/JS、网址组成、请求返回、状态码、Console 与 Network。C：理解 AI 产出的网页和网络故障，基础辨识不等于前端开发 |
| S13 | MDN [Code editors](https://developer.mozilla.org/en-US/docs/Learn_web_development/Getting_started/Environment_setup/Code_editors)、[Cookies](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/Cookies)、[HTTP 缓存](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/Caching)；Chrome [扩展权限](https://developer.chrome.com/docs/extensions/develop/concepts/declare-permissions) | A/B：源文编辑、会话状态、缓存与扩展访问权限。C：用来读改 AI 文件、理解网页登录和旧资源，不要求编写扩展或部署认证系统 |
| S14 | [MIT Backups](https://missing.csail.mit.edu/2020/potpourri/#backups) | A：同步可能传播删除与错误，备份需可恢复与独立副本。C：区分 Git 历史、远端同步与完整备份；不能保证未纳入记录的文件可恢复 |

S2 来源链：[仓 README](https://github.com/https-deeplearning-ai/sc-agent-skills-files#about-this-repository)说明对应课程，并链接正式页面；[官方课程总目录](https://github.com/https-deeplearning-ai/deeplearning-ai)同时登记课程及材料仓。只核对公开笔记与目录，没有冒称看完视频。

两路只读取材核对了课程源头与受众；本轮没有把 Anthropic 的课纲、规范、教程重复计为多支独立教学共识。外部读懂后用中文自行归纳，未复制课程正文；指定校验器模块仅下载到忽略区。当前学员的实际缺项和工具条件仍无调查证据。
