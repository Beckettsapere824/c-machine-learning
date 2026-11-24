#!/usr/bin/env bash
set -euo pipefail
echo "== c-machine-learning / agent-harness init =="
for f in AGENT.md MEMORY.md feature_list.json progress.md; do
  [[ -f "$f" ]] && echo "OK: $f" || { echo "MISSING: $f"; exit 1; }
done
for f in STUDY_BOARD.md skills/README.md docs/HARNESS_PUSH_GATE.md tools/assert_no_stub.sh; do
  [[ -f "$f" ]] && echo "OK: $f" || echo "NOTE: $f missing"
done
python3 -c "import json; json.load(open('feature_list.json'))" && echo "OK: feature_list.json"
echo "== init complete =="
