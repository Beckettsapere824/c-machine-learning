# MEMORY.md — Persistent Project Memory

Append-only style for bugs and decisions. Newest entries at the **top** of each section.

---

## Status (2026-11-03)

### Done (guided + bilingual + mirrored to ml-notes)

- M0.1, M0.2, M0.3, M0.4
- M1.1, M1.2, M1.3 (M1.2/M1.3 mirrors may be shortened summaries on .io — prefer full file)
- `CONSTRUCTION.md`, `AGENT.md`, this file
- Preview: https://beckettsapere824.github.io/ml-notes/
- Demo: https://beckettsapere824.github.io/ml-demos/knn-voronoi.html
- SVM demo: https://beckettsapere824.github.io/ml-demos/svm-margin.html

### In progress / next

- M0.5 … M0.12 guided bilingual rewrite
- Full mirror of every rewritten node (not truncated)
- Fix any remaining preview issues after math-protect patch on `ml-notes/index.html`

### Not yet rewritten (old short / summary-style nodes still in repo)

- Most of M2–M8 body text still pre-guidance style; YAML `思路` exists for all.

---

## Formula / render pitfalls (MUST READ)

### P0 — Preview site: marked.js destroys math (found 2026-11-03 live check)

**Symptom**

- Display `pmatrix` rendered as a single row with dots: `(x1 x2 ⋮ xd)` instead of a column.
- Inline `\lVert ... \rVert _{2}` leaked as raw TeX or merged with following English (`So $...$This is...`).
- Underscores turned into emphasis; `\\` line breaks inside matrices lost.

**Root cause**

`marked.parse()` runs **before** KaTeX. Markdown treats `_` as `<em>` and can alter `\\`.

**Fix (implemented in `ml-notes/index.html`)**

1. Extract `$$...$$` and `$...$` into slots with placeholders `@@MATHi@@`.
2. Run `marked.parse` on the protected string.
3. Replace placeholders with `katex.renderToString`.

**Rule for agents:** Never assume GitHub-flavored markdown preview ≡ ml-notes preview. Always re-check live after mirror.

### P1 — Norm bars

| Bad | Good |
|-----|------|
| `\\|x\\|_2` or `|x|` for norms | `\\lVert x \\rVert _{2}` |
| `x^\\top` | `x^{\\top}` |
| `\\ell_2` | `\\ell_{2}` |
| `\\mathrm{mode}{y_i}` | `\\mathrm{mode}\\{y_{i}\\}` |

### P2 — Incomplete mirrors

Pushing a **truncated** `ml-notes/md/M0.2.md` made the preview look “broken / too short.” Always copy the **full** `nodes/X.md` file.

### P3 — Chinese + inline math

Keep each math fragment in one matched `$...$` pair. Do not open `$` mid-sentence without closing before Chinese punctuation games; prefer ending the English sentence, then a Chinese sentence that may contain its own `$...$`.

---

## Design decisions

1. **思路 in YAML is for maintainers/agents**; human-facing prose is `nodes/*.md`.
2. **One node = one concept**; examples + one real exercise required.
3. **HTML demos only when static text cannot carry the geometry** (e.g. Voronoi, SVM margin).
4. **Harness files** (`AGENT.md`, `MEMORY.md`, `CONSTRUCTION.md`) stay in `c-machine-learning` so other agents can join without chat history.

---

## Live QA checklist (each node)

- [ ] https://beckettsapere824.github.io/ml-notes/#&lt;id&gt; loads full text
- [ ] All display equations are true columns/matrices where intended
- [ ] No raw TeX visible in paragraph text
- [ ] No `.katex-error` red spans
- [ ] EN/ZH both present as full paragraphs

---

## Log

### 2026-11-03

- Live screenshot of M0.1: pmatrix collapsed; inline lVert broken by marked emphasis.
- Fixed viewer with extract-math-before-marked.
- Created AGENT.md + MEMORY.md harness.
