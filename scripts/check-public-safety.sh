#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

targets=(
  "src"
  "public"
)

patterns=(
  "venus"
  "woa"
  "OPENAI_API_KEY"
  "api[_-]?key"
  "password"
  "secret"
  "token="
  "工单"
  "trace"
)

search() {
  if command -v rg >/dev/null 2>&1; then
    rg -n -i -- "$1" "${targets[@]}"
    return
  fi

  grep -RInE -I -- "$1" "${targets[@]}"
}

for pattern in "${patterns[@]}"; do
  if search "$pattern" >/tmp/bytethm-public-safety-match.txt; then
    echo "Potential public-safety issue matched pattern: $pattern"
    cat /tmp/bytethm-public-safety-match.txt
    exit 1
  fi
done

echo "Public-safety check passed."
