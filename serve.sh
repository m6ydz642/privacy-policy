#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
PORT="${PORT:-8080}"

cd "$ROOT"
echo "Local preview (GitHub Pages와 비슷한 경로):"
echo "  http://localhost:${PORT}/nback/"
echo ""
echo "종료: Ctrl+C"
exec python3 -m http.server "$PORT"