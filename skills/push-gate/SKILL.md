---
name: push-gate
description: Enforce content integrity; never push placeholders or stubs for critical paths.
---

# push-gate

Materialize full content → `./tools/assert_no_stub.sh` → push → re-read. See docs/HARNESS_PUSH_GATE.md. Critical: nodes/, data/, AGENT.md, skills/.
