# MEMORY.md — Persistent Project Memory

Append-only style for bugs and decisions. Newest entries at the **top** of each section.

---

## Status (2026-11-03)

### Done (guided + bilingual)

- **M0.1–M0.12 entire math module** rewritten guided + bilingual in `nodes/`
- M1.1, M1.2, M1.3 guided + bilingual
- `CONSTRUCTION.md`, `AGENT.md`, this file, `.grok/README.md`
- Preview math-protect fix on `ml-notes/index.html`
- Demo: knn-voronoi, svm-margin

### Mirrored to ml-notes (full or QA-capable)

- M0.1–M0.8 full on https://beckettsapere824.github.io/ml-notes/
- M0.9–M0.12 mirrored (slightly condensed on .io for some; source `nodes/` is full)
- M1.1–M1.3 present

### Next

- Optionally expand M0.9–M0.12 .io mirrors to 100% full text parity with `nodes/`
- Rewrite M2.1 onward with same guided standard
- Live-check each new node on ml-notes after mirror

---

## Formula / render pitfalls (MUST READ)

### P0 — marked.js destroys math (2026-11-03)

**Symptom:** pmatrix collapsed to a row; inline `\lVert` leaked raw TeX.

**Cause:** `marked.parse` before KaTeX; `_` → emphasis; `\\` lost.

**Fix:** extract `$`/`$$` → placeholders → marked → `katex.renderToString` in `ml-notes/index.html`.

### P1 — Norm / subscript braces

Use `\lVert x \rVert _{2}`, `x^{\top}`, `\ell_{2}`, `\mathrm{mode}\{...\}`.

### P2 — Truncated mirrors look like content bugs

Always copy full `nodes/X.md` to `ml-notes/md/X.md`.

### P3 — Chinese + inline math

One matched `$...$` pair per math fragment; do not leave unclosed `$` across language switches.

---

## Design decisions

1. YAML `思路` = agent/maintainer path; `nodes/*.md` = human prose.
2. EN paragraph then ZH paragraph.
3. HTML demos only for geometry/dynamics static text cannot carry.
4. Harness: `AGENT.md` + `MEMORY.md` + `CONSTRUCTION.md` for multi-agent continuity.

---

## Log

### 2026-11-03 (later)

- Completed guided rewrite M0.5–M0.12.
- Mirrored M0.5–M0.12 to ml-notes.

### 2026-11-03 (earlier)

- Live screenshot M0.1: pmatrix + inline lVert broken; fixed viewer.
- Created AGENT.md + MEMORY.md harness.
