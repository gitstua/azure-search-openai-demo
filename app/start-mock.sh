#!/bin/sh

set -eu

# Run from repo root so relative paths are stable.
cd "${0%/*}" || exit 1
cd ../

echo ""
echo "Installing frontend packages"
echo ""
npm install --prefix app/frontend

echo ""
echo "Installing mockbackend packages"
echo ""
npm install --prefix app/mockbackend

echo ""
echo "Starting mock backend on http://127.0.0.1:50505"
echo ""
npm --prefix app/mockbackend run dev &
MOCK_PID=$!

cleanup() {
    kill "$MOCK_PID" 2>/dev/null || true
}
trap cleanup INT TERM EXIT

echo ""
echo "Starting frontend dev server (Vite)"
echo ""
exec npm --prefix app/frontend run dev
