#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

if ! command -v docker >/dev/null 2>&1; then
  echo "Error: docker not found in PATH."
  exit 1
fi

if ! docker compose version >/dev/null 2>&1; then
  echo "Error: docker compose not available."
  exit 1
fi

if [ ! -f ".env" ]; then
  cp ".env.example" ".env"
  echo "Created Reader/.env from .env.example"
fi

if ! grep -q '^READER_BUILD_TARGET=' ".env"; then
  echo "READER_BUILD_TARGET=development-stage" >> ".env"
fi

if command -v git >/dev/null 2>&1; then
  git submodule update --init --recursive
fi

docker compose down --remove-orphans >/dev/null 2>&1 || true
docker compose up -d --build
docker compose ps

echo ""
echo "Reader is starting."
echo "Web:            http://localhost:2001"
echo "API Gateway:    http://localhost:8001"
echo "PostgREST:      http://localhost:8002"
echo "MinIO API:      http://localhost:2002"
echo "MinIO Console:  http://localhost:2003"
