# MEMORY.md — Persistent Project Memory

Newest entries at the **top** of each section.

---

## Status (2026-11-03)

### Done (guided + bilingual in `nodes/`)

- **M0.1–M0.12** math
- **M1.1–M1.3** k-NN
- **M2.1–M2.8** linear models / logistic / softmax
- **M3.1–M3.5** SVM (hard margin, dual, soft margin, kernel, representer)
- Site harness + ml-notes preview + demos

### Mirrored on ml-notes (QA)

- M0–M3 present under `ml-notes/md/` (some condensed; full text in `nodes/`)

### Next

- **M4** PCA (covariance → eigen → algorithm / eigenfaces)
- Then M5 clustering, M6–M8 per YAML

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

### 2026-11-03 (later)

- M3.1–M3.5 guided bilingual written and mirrored.

### 2026-11-03 (earlier)

- Homepage redraw: Author drawer + quadrants; fixed z-index/top/hover.
- M2.1–M2.8 guided bilingual written and mirrored.
