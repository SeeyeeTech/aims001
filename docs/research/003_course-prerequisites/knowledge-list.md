# 六讲知识点清单

依据当前意向重新取证；以下编排为建议，每讲不超过 200 字。[来源定位与证据边界](sources.md)另列。

## 1 · 大语言模型与能力边界

概率生成；预训练知识与当前输入的区别；模型、应用与工具；知识时效、幻觉与能力边界；任务是否适合 AI、何时需要自己的领域知识。依据：[Mollick](https://gail.wharton.upenn.edu/practical-ai/)、[MIT 讲义](https://missing.csail.mit.edu/2026/agentic-coding/)。

## 2 · 任务说明与提示迭代

目标、约束与验收要求；上下文和参考示例；要求与材料分开；少样例提示；任务拆解与提示链；评价、具体反馈和逐轮修订。依据：[Google](https://grow.google/intl/en_sg/prompting-essentials/)、[AI Fluency](https://www.coursera.org/learn/ai-fluency-framework-foundations)。

## 3 · 上下文、资料与知识库

token 与上下文窗口；聊天历史、外部记忆与资料库的区别；文档取材、分块与压缩；检索增强生成（RAG）与微调；来源定位和版本。依据：[Andrew Ng](https://www.coursera.org/learn/generative-ai-for-everyone)、[上下文讲解](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents)。

## 4 · 结果判断与核验

幻觉、迎合与偏见；事实与推断；来源是否支持结论；领域知识与外部核验；输出质量、推理与过程检查；反馈纠错和保留未知。依据：[Andrew Ng](https://www.deeplearning.ai/courses/ai-prompting-for-everyone)、[AI Fluency](https://www.coursera.org/learn/ai-fluency-framework-foundations)、[Google](https://www.coursera.org/google-certificates/ai-essentials-google)。

## 5 · 工具、工作流与可控修改

工具调用与 Agent；人机任务分工；多步流程、检查点和失败反馈；隐私与执行权限；差异、版本和恢复（沿用 HTML／GUI Git 微练习）。依据：[MIT 讲义](https://missing.csail.mit.edu/2026/agentic-coding/)、[既有取舍](../001_lecture-knowledge/decision.md)。

## 6 · 综合任务与方法迁移

任务说明、取材、生成、核验和交付的依赖关系；按风险设置验收；定位失败环节；对照与替换任务；可复用步骤及适用边界。综合编排依据：[Andrew Ng 的项目与工作流](https://www.coursera.org/learn/generative-ai-for-everyone)、[本课意向](../../../.42cog/intent.md)。
