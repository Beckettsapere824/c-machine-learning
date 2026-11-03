# MEMORY.md — Persistent Project Memory

Newest entries at the **top** of each section.

---

## Status (2026-11-03)

### Done (guided + bilingual in `nodes/`)

- **M0.1–M0.12** math module
- **M1.1–M1.3** k-NN path
- **M2.1–M2.8** full linear models path (regression → GD → perceptron → Adaline → logistic → softmax)
- Harness: `AGENT.md`, `MEMORY.md`, `CONSTRUCTION.md`, `.grok/`
- Site: top bar + author drawer + four quadrants; ml-notes math-protect viewer

### Mirrored on ml-notes (QA)

- M0.1–M0.12, M1.1–M1.3, M2.1–M2.8 present under `ml-notes/md/`
- Full prose is always in `c-machine-learning/nodes/`; some .io mirrors are condensed

### Next

- **M3.1–M3.5** SVM path (margin → dual → soft-margin → kernel → representer)
- Keep live-checking formulas on https://beckettsapere824.github.io/ml-notes/

---

## Formula / render pitfalls

### P0 — marked.js before KaTeX (fixed in ml-notes/index.html)

Extract `$`/`$$` → placeholders → marked → katex.renderToString.

### P1 — Norms / braces

`\lVert x \rVert _{2}`, `x^{\top}`, `\ell_{2}`, `\mathrm{mode}\{...\}`.

### P2 — Truncated mirrors look like content bugs

Copy full `nodes/X.md` when doing serious QA.

### P3 — Site drawer covered Author button

Panel must start below topbar (`top: 3.25rem`); topbar `z-index` above panel; hover close-delay 200ms.

---

## Log

### 2026-11-03 (session)

- Homepage redraw: Author drawer + quadrants; fixed z-index/top/hover.
- M2.1–M2.8 guided bilingual written and mirrored.
