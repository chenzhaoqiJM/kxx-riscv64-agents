#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source_dir="$script_dir/agents"
target_dir="$HOME/.copilot/agents"

mkdir -p "$target_dir"

find "$source_dir" -maxdepth 1 -type f ! -name 'README.md' -exec cp -v {} "$target_dir/" \;
