#!/bin/sh

set -e

if command -v python3 >/dev/null 2>&1; then
  if command -v python3.11 >/dev/null 2>&1; then
    PYTHON_CMD="$(command -v python3.11)"
  else
    PYTHON_CMD="$(command -v python3)"
  fi
elif command -v python >/dev/null 2>&1; then
  PYTHON_CMD="$(command -v python)"
elif [ -x /opt/homebrew/bin/python3 ]; then
  PYTHON_CMD="/opt/homebrew/bin/python3"
elif [ -x /usr/local/bin/python3 ]; then
  PYTHON_CMD="/usr/local/bin/python3"
else
  echo 'Python 3 was not found in PATH.'
  echo "Current PATH: $PATH"
  exit 1
fi

echo "Creating Python virtual environment \".venv\" using \"$PYTHON_CMD\"..."
"$PYTHON_CMD" -m venv ./.venv

echo 'Installing dependencies from "requirements.txt" into virtual environment (in quiet mode)...'
./.venv/bin/python -m pip --quiet --disable-pip-version-check install -r app/backend/requirements.txt
