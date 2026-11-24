#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"; cd "$ROOT"
FORBIDDEN_PATTERNS=("PLACEHOLDER" "PLACEHOLDER_WILL_FAIL" "SEE_LOCAL_FILE" "TODO_STUB")
CRITICAL_GLOBS=("AGENT.md" "feature_list.json" "docs" "tools" "skills" "nodes" "data" "learning")
fail=0
check_file() {
  local f="$1"; [[ -f "$f" ]] || return 0
  local size; size=$(wc -c < "$f" | tr -d ' ')
  local content; content=$(head -c 2000 "$f" 2>/dev/null || true)
  for pat in "${FORBIDDEN_PATTERNS[@]}"; do
    if echo "$content" | grep -q "$pat"; then
      if [[ "$f" == *"assert_no_stub.sh"* ]] || [[ "$f" == *"HARNESS_PUSH_GATE.md"* ]]; then continue; fi
      echo "FAIL: $f contains $pat"; fail=1
    fi
  done
  local is_critical=0
  for g in "${CRITICAL_GLOBS[@]}"; do
    if [[ "$f" == "$g"* ]] || [[ "$f" == */"$g"* ]]; then is_critical=1; break; fi
  done
  if [[ $is_critical -eq 1 ]] && [[ "$size" -lt 80 ]]; then
    echo "FAIL: $f critically small ($size)"; fail=1
  fi
}
if [[ $# -gt 0 ]]; then for p in "$@"; do check_file "$p"; done
else
  while IFS= read -r -d '' f; do check_file "$f"
  done < <(find AGENT.md MEMORY.md feature_list.json progress.md session-handoff.md runs.md init.sh docs tools skills nodes data learning -type f 2>/dev/null -print0 || true)
fi
[[ $fail -eq 0 ]] && { echo "assert_no_stub: OK"; exit 0; } || { echo "assert_no_stub: FAILED"; exit 1; }
