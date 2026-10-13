# lectures · 课程作品

当前入口：[课程大纲](outline.md)。

## 原型入口

| 文件 | 用途 |
|---|---|
| [standard.md](standard.md) | 表达参照、知识讲次归属、三条约束与已登记的对话亲改 |
| [negatives.md](negatives.md) | 从退稿与主动攻击中提炼的负例护栏 |
| [check.sh](check.sh) | 检查结构、编号、字数、知识词组与讲次归属及字面负例，打印人工清单 |

在项目根目录运行 `bash src/lectures/check.sh`；检查候选稿时在命令末尾传入文件路径。当前三份文件只约束大纲，各讲教学原型分别定标。

大纲层已记录本次亲改，各讲教学小样仍需单独定标。从大纲选一个小节，在对应 `chNN/` 建立 `standard.md`、`negatives.md` 与检查脚本，再写第一份 `lecture.md` 小样。先做一个知识的讲解、对照与练习；亲改后抽原则，再验证替换题。可从 2.2 Markdown 或 3.2 Git 开始；资料读取小样现对应 3.5，分工见[指导卡](../../docs/plan/001_lecture-three-sample.md)。

作品单位是一讲，未来按 `chNN/` 组织；每讲包含 lecture 讲义、教学 PPTX 和交互自学内容。具体关系见 [认知模型](../../.42cog/cog.md)，交付标准见 [课程标准](../../specs/course.md)。

第六讲已创建[大作业设计](ch06/assignment.md)及本讲标准、负例、检查入口，运行 `bash src/lectures/ch06/check.sh` 检查设计卡。尚未制作材料包、课堂模板或完整课程成品。人的自由手稿 `hi.md` 由人自行创建，AI 只读。
