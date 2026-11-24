# Chapter 5: Continuous Distributions

Source: SDST2601A / STAT2601A Chapter 5.pdf (26 pages).

## 5.1 Distribution of the Continuous Type

**Definition 5.1**  
\(X\) is (absolutely) continuous if its cdf has the form  
\[
F(x) = \int_{-\infty}^{x} f(t)\,dt
\]
for some non-negative function \(f\) (the pdf).

### Properties of a pdf
1. \(f(x) = F'(x)\) when differentiable.
2. \(f(x)\ge 0\).
3. \(\int_{-\infty}^{\infty} f(x)\,dx = 1\).
4. \(\Pr(X\in A) = \int_A f\).
5. \(\Pr(X=a)=0\); interval probabilities equal regardless of open/closed endpoints; \(F\) continuous.

Example: \(f(x)=c(2x-x^2)\) on (0,2) → \(c=3/4\).

(Further: Uniform, Exponential, Gamma, Normal, and transformations — see also distributions-summary.md.)

---
*Structural extract. Detailed continuous families and calculations in source PDF.*
