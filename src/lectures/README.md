# lectures · 课程作品

当前入口：[课程大纲](outline.md)。

## 原型入口

| 文件 | 用途 |
|---|---|
| [standard.md](standard.md) | 表达参照、已确认知识词组、三条约束与亲改记录入口 |
| [negatives.md](negatives.md) | 从退稿与主动攻击中提炼的负例护栏 |
| [check.sh](check.sh) | 检查大纲结构、编号、字数、知识词组及字面负例，打印人工清单 |

在项目根目录运行 `bash src/lectures/check.sh`；检查候选稿时在命令末尾传入文件路径。当前三份文件只约束大纲，各讲教学原型分别定标。

从大纲选中一个小节，在对应 `chNN/` 建立该讲的 `standard.md`、`negatives.md` 与检查脚本，记录已知约束，再写第一份 `lecture.md` 小样。先做一个基础知识的讲解、对照和练习；亲改后抽出原则，再验证替换任务。可从 2.2 Markdown 或 3.5 Git 开始；原第 3 讲的资料读取小样现在对应 4.4，分工见[指导卡](../../docs/plan/001_lecture-three-sample.md)。

作品单位是一讲，未来按 `chNN/` 组织；每讲包含 lecture 讲义、教学 PPTX 和交互自学内容。具体关系见 [认知模型](../../.42cog/cog.md)，交付标准见 [课程标准](../../specs/course.md)。

当前尚未创建章节目录或课程成品。人的自由手稿 `hi.md` 由人自行创建，AI 只读。
