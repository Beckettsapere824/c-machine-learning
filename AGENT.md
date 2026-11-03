# AGENT.md — Operating Contract for Any Agent

This file is the entry point for **any** coding agent (Grok, Claude, Codex, etc.) working on this repo.

Read in order: `AGENT.md` → `MEMORY.md` → `CONSTRUCTION.md` → `data/prerequisite_tree.yaml`.

---

## Mission

Build a **guided, bilingual (EN paragraph then ZH paragraph)** machine-learning knowledge tree for COMP3314. Nodes are teaching paths, not Wikipedia summaries. Math foundations (M0) are expanded because the lecture slides are thin and the learner needs explicit prerequisites.

---

## Repositories

| Repo | Role |
|------|------|
| `Beckettsapere824/c-machine-learning` | Source of truth: YAML index, `nodes/*.md`, `CONSTRUCTION.md`, this harness |
| `Beckettsapere824/Beckettsapere824.github.io` | Live demos (`ml-demos/`) + KaTeX preview (`ml-notes/`) |

After editing a node in `nodes/X.md`, **mirror the full file** to `Beckettsapere824.github.io/ml-notes/md/X.md` and verify at:

https://beckettsapere824.github.io/ml-notes/#X

---

## Non-negotiables

1. **YAML `思路` first** — do not write long node prose without a structured pedagogical path in `data/prerequisite_tree.yaml`.
2. **Guided narrative** — problem → steps → hand calculation → summary → practice → next question. No definition dumps.
3. **Bilingual** — full English paragraph, then full Chinese paragraph (not sentence interleaving).
4. **Safe KaTeX** — see `MEMORY.md` § Formula pitfalls. Prefer `\lVert \rVert`, always brace sub/superscripts `_{2}` `^{\top}`.
5. **Live check** — formula QA only counts after `ml-notes` preview, not GitHub markdown alone.
6. **Record every new render bug** in `MEMORY.md` the same session it is found.

---

## Workflow (one node)

```
1. Open/edit 思路 in data/prerequisite_tree.yaml
2. Write nodes/M?.?.md (EN/ZH, safe math)
3. Push full content to github.io ml-notes/md/M?.?.md
4. Open https://beckettsapere824.github.io/ml-notes/#M?.?
5. If broken → fix source + MEMORY.md pitfall list → re-mirror
6. Optional: guided HTML demo under ml-demos/ if geometry/dynamics need it
```

---

## Current priority (update when done)

See `MEMORY.md` § Status.

Default order: finish **M0.5–M0.12** guided rewrites → mirror → then M2+ same standard.
