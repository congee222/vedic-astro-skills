# vedic-astro-skills

吠陀占星（Vedic Jyotish）Claude Code Skill 集合，基于 [CNWU16/vedic-astro-skills](https://github.com/CNWU16/vedic-astro-skills) 二次改进。

## 改进内容

- **Skill 指令精简约 70%**：去除重复示例和冗余禁止清单，减少 token 消耗
- **输出模式重构**：分析内容追加写入单一 `analysis.md`，同时在聊天框同步展示，不再只报进度
- **删除强制中间暂停**：分析流程自动推进，无需用户手动说"继续"
- **Q&A 双输出**：答疑内容写入文件并在聊天框展示
- **report_builder.py 修复**：目录可跳转 + 新增单文件模式（自动检测 `analysis.md`）

## 包含 Skill

| Skill | 功能 |
|-------|------|
| `vedic-reader` | 读盘引擎，从 PDF/截图/文本提取星盘数据 |
| `vedic-core` | 核心分析引擎，P1-P12 行星审计 + 十大板块人生解读 |
| `vedic-career` | 职业分析，四阶段职业蓝图 |
| `vedic-love` | 感情分析，时机锁定 + 配偶画像 |

## 安装

```bash
curl -fsSL https://raw.githubusercontent.com/congee222/vedic-astro-skills/main/install.sh | bash
```

或手动：

```bash
git clone https://github.com/congee222/vedic-astro-skills.git
cp -r vedic-astro-skills/claude-code/skills/* ~/.claude/skills/
```

安装完成后重启 Claude Code 即可。

## 使用

1. 提供星盘 PDF → 触发 `vedic-reader` 读盘
2. 说"帮我分析" → 触发 `vedic-core`
3. 说"分析事业" → 触发 `vedic-career`
4. 说"分析感情" → 触发 `vedic-love`
5. 说"生成报告" → 输出 HTML 报告

## 致谢

原始 Skill 由 [CNWU16](https://github.com/CNWU16) 创作，原仓库：[CNWU16/vedic-astro-skills](https://github.com/CNWU16/vedic-astro-skills)。
