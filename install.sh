#!/bin/bash

# ==========================================================================================
# AI Agent Skills Installer
# Digunakan untuk memasang standar AGENT.md dan .ai/skills ke repo yang sudah ada.
# ==========================================================================================

set -e

# Opsional: Bisa di-override via env variable
REPO_URL=${1:-"https://github.com/januarmaksum/template-agent-fe.git"}
TEMP_DIR=$(mktemp -d)

echo "🚀 Memulai instalasi AI Agent Skills dari: $REPO_URL"

# 1. Clone secara minimal ke folder temp
echo "⏳ Mengunduh template..."
git clone --depth 1 "$REPO_URL" "$TEMP_DIR" > /dev/null 2>&1

# 2. Daftar file dan folder yang akan dikopi
TARGETS=(
  ".ai"
  ".trae"
  "AGENT.md"
  "CLAUDE.md"
  ".cursorrules"
  ".windsurfrules"
  ".clinerules"
)

# 3. Kopi file ke direktori saat ini
for item in "${TARGETS[@]}"; do
  if [ -e "$TEMP_DIR/$item" ]; then
    echo "📦 Memasang $item..."
    cp -r "$TEMP_DIR/$item" .
  fi
done

# 4. Khusus untuk Copilot (karena foldernya bisa jadi sudah ada)
if [ -f "$TEMP_DIR/.github/copilot-instructions.md" ]; then
  echo "📦 Memasang Copilot instructions..."
  mkdir -p .github
  cp "$TEMP_DIR/.github/copilot-instructions.md" .github/
fi

# 5. Cleanup
rm -rf "$TEMP_DIR"

echo ""
echo "✨ SELESAI! Repo ini sekarang AI-Ready."
echo "-------------------------------------------------------"
echo "Editor yang didukung: Cursor, Trae, Windsurf, Cline, VS Code, Claude Code."
echo "File Utama: AGENT.md (Silakan sesuaikan tech stack di dalamnya)."
echo "-------------------------------------------------------"
