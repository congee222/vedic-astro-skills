#!/bin/bash
set -e

SKILLS_DIR="$HOME/.claude/skills"
REPO="https://github.com/congee222/vedic-astro-skills.git"
TMP_DIR=$(mktemp -d)

echo "📥 正在下载 vedic-astro-skills..."
git clone --depth=1 "$REPO" "$TMP_DIR" 2>/dev/null

echo "📂 安装到 $SKILLS_DIR ..."
mkdir -p "$SKILLS_DIR"
cp -r "$TMP_DIR/claude-code/skills/"* "$SKILLS_DIR/"

rm -rf "$TMP_DIR"
echo "✅ 安装完成！重启 Claude Code 后即可使用。"
echo "   包含：vedic-reader / vedic-core / vedic-career / vedic-love"
