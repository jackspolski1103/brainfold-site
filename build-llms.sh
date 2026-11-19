#!/bin/sh
# Rebuilds site/llms-full.txt from the documentation of the main repository.
# Usage: ./build-llms.sh /path/to/brainfold
set -eu
docs="$1/web/src/docs"
out=site/llms-full.txt
{
  printf '# Brainfold: full documentation\n\n'
  printf '> Brainfold is an open source MCP server that turns a folder into a team'"'"'s shared brain: files with permissions that Claude Code, Codex or any other MCP harness reads and writes. Source: https://github.com/jackspolski1103/brainfold\n'
  for page in introduction quickstart connect folders permissions skills history files members activity deploy configuration durability tools cli; do
    printf '\n\n---\n\n<!-- %s.md -->\n\n' "$page"
    sed 's|(#/docs/\([a-z-]*\))|(https://brainfold-demo-production.up.railway.app/#/docs/\1)|g' "$docs/$page.md"
  done
} > "$out"
