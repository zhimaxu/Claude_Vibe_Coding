#!/bin/bash
# 顺序推送所有子模块及主仓库
# 用法: bash push-all.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

echo "=== 开始顺序推送 ==="

# 1. 推送所有子模块（不递归，避免嵌套子模块问题）
echo ""
echo "--- 推送子模块 ---"
git submodule foreach --quiet '
  echo "==> 推送 $name ($sm_path)..."
  git push
  echo "    ✓ $sm_path 推送完成"
'

# 2. 推送主仓库
echo ""
echo "--- 推送主仓库 ---"
git push

echo ""
echo "=== 全部推送完成 ==="
