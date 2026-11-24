#!/usr/bin/env bash
set -euo pipefail
pass=0; fail=0
check() { if [[ "$2" == pass ]]; then echo "  PASS $1"; pass=$((pass+1)); else echo "  FAIL $1"; fail=$((fail+1)); fi; }
for f in AGENT.md MEMORY.md feature_list.json progress.md init.sh skills/README.md docs/HARNESS_PUSH_GATE.md tools/assert_no_stub.sh; do
  [[ -f "$f" ]] && check "$f" pass || check "$f" fail
done
[[ -f progress.md ]] && grep -qiE 'next exact|Next exact' progress.md && check "Next exact" pass || check "Next exact" fail
echo "$pass passed, $fail failed"; [[ $fail -eq 0 ]]
