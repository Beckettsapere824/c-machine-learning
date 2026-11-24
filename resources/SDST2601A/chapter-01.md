# Chapter 1: Introduction

Source: SDST2601A / STAT2601A Chapter 1.pdf (8 pages).  
Course: Probability and Statistics I, HKU, 2026-2027 1st semester (K.P. WAT).

## 1.1 Introduction to Probability

Study of probability is tied to **uncertainty** and **variability**. Applications span finance, gambling, climate, engineering, biology, quality control, etc.

**Probability** (focus of this course):
- Objective, quantitative assessment of how certain (or how likely) an event will occur.
- Basic tool in statistical inference.
- Studies properties of *models* of random phenomena; provides a “calculus of variability”.

**Statistics** (focus of SDST2602/STAT2602):
- Studies data from experiments/observations, draws evidence for modelling conjectures, infers conclusions or decisions.
- Tools justified by probability theory.

Simplified link: Model ↔ Data (probability goes one way, statistics the other).

### Example 1.1 — Probability vs Statistics
- Probability side: fair coin → Pr(all heads in 10 tosses) = (0.5)^10.
- Statistics side: observe 10 heads → is the coin fair?

## 1.2 Origin of Probability

### Historical event (1654, France)
Persons: C. de Méré, B. Pascal, P. de Fermat.

**Version 1 (gambler’s problem)**  
- Game 1: at least one six in 4 throws of a die.  
- Game 2: at least one double-six in 24 throws of two dice.  
Naive counting suggested indifference; experience showed Game 1 more favourable.  
Modern calculation:  
Pr(Game 1 win) = 1 − (5/6)^4 ≈ 0.51775  
Pr(Game 2 win) = 1 − (35/36)^24 ≈ 0.4914

**Version 2 (problem of points)**  
Interrupted game (first to 4 points, prize $100). After 5 tosses: Fermat 3, Pascal 2.  
Division by remaining chances: Fermat $75, Pascal $25.  
General form later solved via negative binomial.

### 1.2.2 Classical School and Principle of Indifference

**Definition 1.1**  
If a trial has \(N\) equally likely outcomes and \(f\) of them favour event \(E\), then  
\[
\Pr(E) = \frac{f}{N}.
\]

Example: drawing a diamond from 52 cards → 13/52 = 1/4.

---
*Full proofs, further examples and exercises remain in the original PDF. This file is a durable structural extract for the resource index.*
