# AGENT.md — c-machine-learning (agent-harness transplant)

**Upstream:** `Beckettsapere824/agent-harness`  
Full portable pack: **15 skills**, push-gate, compliance, lessons, `init.sh`, `audit-harness.sh`, `tools/assert_no_stub.sh`.  
**Do not replace with thin stubs.** Improve upstream via `propose-improvement`.

**Read order before ANY write:**  
`AGENT.md` → `MEMORY.md` → `docs/HARNESS_LESSONS.md` → skim `docs/HARNESS_PUSH_GATE.md` → `feature_list.json` → `STUDY_BOARD.md` → `progress.md` → handoff/runs → skim `skills/README.md` → Orches claim if any.

---

## HARD GATE: Local mirror (every dialog)

Grok does **not** auto-mount GitHub as the workspace. **Connector-only reads are not enough.**

Before any product write:

1. Write into the **dialog local workspace** at least: `AGENT.md`, `MEMORY.md` (if any), `feature_list.json`, `progress.md`, `STUDY_BOARD.md`, `skills/README.md`, `skills/anti-drift/SKILL.md`, `session-contract.md` (identity, repo, next_exact, mirror_ok).
2. Verify local presence. If missing → **stop** and mirror.
3. Skipping until the human reminds you = **DIALOG_MISS** (see Orches `docs/LOCAL_MIRROR.md`). Do not blame or weaken the harness.

Durable edits: **local first → immediate GitHub push**.

---

## Mission

Coordination board for **ML + Probability** tracks. ML nodes live here; Probability nodes in `Beckettsapere824/Probability` (same Orches learn-* roles).

---

## HARD BANS

1. Never bulk-delete `nodes/*`, `data/prerequisite_tree.yaml`, `learning/mastery.md` evidence, or course dumps under `resources/` without human order.
2. Never PLACEHOLDER-collapse large knowledge files.
3. Surgical edits only.
4. push-gate before non-trivial push.
5. If deletion already happened: stop, report, restore.

---

## Multi-agent

One shared harness. Roles only in Orches identities.

---

## Upstream rules

One feature; evidence before done; local→immediate push; anti-drift every dialog; DIALOG_MISS ≠ harness rewrite.

---

## End session

Next exact + handoff + runs.md + claim release.
