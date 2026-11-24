# resources/INDEX.md — Course & school resource catalog

Maintained by **learn-library-***. Prefer paths + short summaries; avoid duplicating large binaries.

## COMP3314 (Beckettsapere824/COMP3314)

| Path | Type | Maps to (node / topic) | Notes |
|------|------|------------------------|-------|
| materials/PPTX_TEXT_DUMP.md | slide text | TBD | |
| materials/SPEAKER_TABLE.md | meta | TBD | |
| materials/slide_script_v4.md | script | TBD | |
| assignment1/solution.md | assignment | TBD | |
| assignment1/solution.Rmd | assignment source | TBD | |
| scripts/* | oral / QA scripts | TBD | presentation support |

## Probability (Beckettsapere824/Probability)

| Path | Type | Notes |
|------|------|-------|
| nodes/*.md | teaching nodes | teach owns content quality |
| exercises/* | problem sets | |
| data/prerequisite_tree.yaml | graph | |
| **course/SDST2601A/** | course source catalog | **canonical home** of STAT2601A extracts (moved 2026-11-24) |

## SDST2601A / STAT2601A — Probability & Statistics I (2026-27 1st)

HKU course materials (K.P. WAT). Dropped 2026-11-24.

**Canonical location (moved):**  
`Beckettsapere824/Probability/course/SDST2601A/`

| Path (Probability repo) | Type | Maps to (node / topic) | Notes |
|-------------------------|------|------------------------|-------|
| course/SDST2601A/README.md | catalog | Probability track | Course overview + file map |
| course/SDST2601A/distributions-summary.md | formula table | common discrete/continuous families | pmf/pdf, E, Var, MGF + pointer to Normal/χ²/t tables |
| course/SDST2601A/chapter-01.md | chapter extract | intro, classical probability | Definition 1.1, gambler’s problem |
| course/SDST2601A/chapter-02.md | chapter extract | counting, permutation | Product / Sum / Subtraction / Division rules |
| course/SDST2601A/chapter-03.md | chapter extract | set theory, Kolmogorov | Union, intersection, complement, axioms |
| course/SDST2601A/chapter-04.md | chapter extract | discrete RV, pmf | Def 4.1–4.3 |
| course/SDST2601A/chapter-05.md | chapter extract | continuous RV, pdf | Def 5.1, pdf properties |
| course/SDST2601A/chapter-06.md | chapter extract | survival, hazard | Def 6.1, memoryless Exp |
| course/SDST2601A/chapter-07.md | chapter extract | joint / marginal | bivariate hypergeometric example |
| course/SDST2601A/chapter-08.md | chapter extract | conditional distributions | Def 8.1 |
| (attachment) Distribution Summary…pdf | source PDF | tables | 4 pp |
| (attachment) Chapter 1–8.pdf | source PDF | full notes | see README for page counts |
| (attachment) stat-cookbook.pdf | external ref | cookbook | Vallentin 0.2.6, 31 pp |

Old path `resources/SDST2601A/` in this repo is a redirect stub only.

## Human drops

| Date | What | Stored path | Indexed by |
|------|------|-------------|------------|
| 2026-11-24 | SDST2601A full chapter set + distribution tables + cookbook | **Probability/course/SDST2601A/** (canonical) | learn-library-1 (dialog-2026-11-24-A) |

## How to add

1. Put course source material under the owning track repo (`Probability/course/…` or `COMP3314/…`).
2. Add a row here with map-to node if known.
3. Push immediately.
