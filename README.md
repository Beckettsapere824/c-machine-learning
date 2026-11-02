# c-machine-learning

Fine-grained knowledge nodes for COMP3314 Introduction to Machine Learning (HKU).

Structure mirrors the Probability project:
- `data/prerequisite_tree.yaml` — the complete directed acyclic graph of concepts
- `nodes/` — one Markdown file per concept (bilingual EN + ZH, formulas, code sketches, examples)

Study order is topological; every node lists exact prerequisites and successors.

## Interactive demos

Some concepts are hard to feel from static text alone. Interactive HTML demos live on the personal site:

| Demo | Helps understand | Link |
|------|------------------|------|
| Hard-margin SVM geometry | Support vectors, margin slab, why only SVs matter | [Open demo](https://beckettsapere824.github.io/ml-demos/svm-margin.html) |

More demos (PCA projection, gradient-descent path, k-NN boundary, kernel trick, …) will be added gradually.
