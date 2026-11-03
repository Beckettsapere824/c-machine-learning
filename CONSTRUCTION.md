# 知识节点仓库 · 标准构造方式

本文档定义本仓库（及同系列课程仓库）的持久结构与写作规范，便于机器与维护者复用。

---

## 1. 目录结构

```
data/
  prerequisite_tree.yaml   # 唯一真相源：节点、前置、思路、学习顺序
nodes/
  M*.md                    # 给人读的引导式正文（双语）
CONSTRUCTION.md            # 本文件
README.md                  # 入口与演示链接
```

交互演示：`https://beckettsapere824.github.io/ml-demos/`  
**公式实机预览（白底 KaTeX）**：`https://beckettsapere824.github.io/ml-notes/`  
把 `nodes/*.md` 镜像到 `Beckettsapere824.github.io/ml-notes/md/` 后即可在预览站检查渲染。

---

## 2. 索引（YAML）必含字段

每个 node：`id`, `name`, `module`, `prereq`, `思路`（读者起点、核心问题、叙事路径、必须建立的直觉、易错点、出口衔接、成功标准）。

思路是施工图，不是内容摘要。

---

## 3. 节点正文规范

### 3.1 双语

一段英文，紧跟一段中文（整段对照）。

### 3.2 引导性

实现 YAML `思路.叙事路径`：问题/情境 → 分步 → 手算 → 小结 → Practice → Next。

### 3.3 公式（KaTeX / GitHub）

**实测易炸点（必须避免）：**

| 错误写法 | 正确写法 | 原因 |
|----------|----------|------|
| `\|x\|_2` 或 `|x|` 表示范数 | `\lVert x \rVert _{2}` | 单竖线/歧义；下标紧贴易触发 “Missing open brace for superscript/subscript” |
| `x^\top` | `x^{\top}` | 上标建议始终加 `{}` |
| `\ell_2` | `\ell_{2}` | 下标加 `{}` |
| `\mathrm{mode}{y_i}` | `\mathrm{mode}\{y_{i}\}` | 宏参数与集合括号都要写对 |
| 中文引号内只包半截公式 | 整段数学放进同一对 `$...$` | 未闭合分隔符 |

行内 `$...$`，独立成行 `$$...$$`。  
改完后在 https://beckettsapere824.github.io/ml-notes/ 打开对应节点确认。

### 3.4 演示

引导性 HTML；笔记中写明先读哪几步再打开。

---

## 4. 工作流

1. 先改 YAML `思路`  
2. 按思路写双语 `nodes/*.md`  
3. 镜像到 `ml-notes/md/` 做 KaTeX 实机检查  
4. 需要时加 `ml-demos/`  
5. 无思路不写长文

---

## 5. 发布自检

- [ ] 中英各自能跟完叙事  
- [ ] 无「先定义后问题」  
- [ ] 关键论断有手算/实验  
- [ ] ml-notes 预览无红色公式报错  
- [ ] 前置/后置链接有效  
