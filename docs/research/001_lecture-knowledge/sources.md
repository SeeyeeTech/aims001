# 来源登记

核验日期 2026-10-13。网页已打开正文；以下为概念依据，课程排序与深度是教学推断。未克隆外部代码，未上传项目材料；读懂后原创编写，未复制外部课程。

## 自有积累

| ID | 原件与定位 | 当前用途与复用 |
|---|---|---|
| O1 | `.42cog/intent.md:7`、`:9`、`:19` | 方向、操作验收、零编程先修；直接遵守 |
| O2 | `src/lectures/outline.md:19`、`:33`—`:38`、`:55`—`:58` | 六讲与四选修；结构已定，内容仍为草案 |
| O3 | `specs/course.md:5` | 操作目标与判据；直接用 |
| O4 | `.42cog/real.md:5`—`:10` | 课时、设备与试教未知；不能宣称效果通过 |
| O5 | Git `be38241`、`d054ae8` | 本地课程与骨架历史；没有学习者实证 |

## 他人积累：官方明载

| ID | 源头与正文定位 | 已核实事实与借鉴范围 |
|---|---|---|
| S1 | [MIT Missing Semester](https://missing.csail.mit.edu/) · Syllabus | 面向 CS 工具熟练度，含 Shell/Git；借鉴实操，不照搬先修。页面标 CC BY-NC-SA |
| S2 | [UNESCO AI 能力框架](https://www.unesco.org/en/articles/ai-competency-framework-students) | 包含以人为本、伦理、技术应用、系统设计；用作遗漏检查，不证明成人短课效果 |
| S3 | [MDN 文件操作](https://developer.mozilla.org/en-US/docs/Learn_web_development/Getting_started/Environment_setup/Dealing_with_files) · File names / File paths | 文件夹、扩展名、路径是操作能力，更改扩展名可能出错；改造成大众操作任务 |
| S4 | [CommonMark 语法](https://commonmark.org/help/) | 基础标题、列表、强调、引用、链接、代码；第 2/5 讲 |
| S5 | [GitHub 表格](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/organizing-information-with-tables) | 管道符表格属于常见扩展，不能保证所有 Markdown 相同 |
| S6 | [MDN 媒体类型](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/MIME_types) · Structure / Important MIME types | 内容性质与媒体类别；区分后缀、内容和打开方式 |
| S7 | [RFC 8259](https://www.rfc-editor.org/rfc/rfc8259) · §1/3/7/8 | JSON 是有语法与类型约束的文本交换格式；格式正确不证明事实 |
| S8 | [RFC 4180](https://www.rfc-editor.org/rfc/rfc4180) · §2 | CSV 记录、字段与引号惯例；Informational RFC，软件方言另测 |
| S9 | [Pro Git](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control) · About Version Control | 记录变化和恢复旧版本；不证明大众必须学命令 |
| S10 | [Microsoft OCR](https://learn.microsoft.com/en-us/azure/ai-services/computer-vision/overview-ocr) · OCR / IDP | 图片/文档提取文字，结构理解有另一任务层；不推荐该页旧服务 |
| S11 | [Microsoft 语音转文字](https://learn.microsoft.com/en-us/azure/ai-services/speech-service/speech-to-text) · Overview / Diarization | 转写和说话人区分是不同能力；不等于纪要 |
| S12 | [Microsoft 翻译](https://learn.microsoft.com/en-us/azure/ai-services/translator/overview) | 文本和文档翻译任务；不要求开通 Azure |
| S13 | [Microsoft TTS](https://learn.microsoft.com/en-us/azure/ai-services/speech-service/text-to-speech) · Overview | 文字转换为语音，与 ASR 方向不同 |

产品文档不证明所有聊天入口都支持对应能力。未查实时价格、未测线上模型准确率。其他认识卡只给用途定位，深入语法与工具实现须后续核验。

## 本机实验

`docs/experiments/exp001-format-boundaries/`：后缀不改变内容，CSV 引号与前导零，JSON 语法与事实分离。不是学习效果证据。
