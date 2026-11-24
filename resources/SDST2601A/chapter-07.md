# Chapter 7: Multivariate Distributions

Source: SDST2601A / STAT2601A Chapter 7.pdf (24 pages).

## 7.1 Joint and Marginal Distributions

When several random variables are observed together, the **joint distribution** describes both marginal behaviour and dependence.

For discrete \(X,Y\):

**Definition 7.1**  
Joint pmf: \(p(x,y)=\Pr(X=x,Y=y)\).

Often presented as a two-way table.

**Example 7.1** (bivariate hypergeometric)  
3 balls from urn with 3 red, 4 white, 5 blue. \(X\)=# red, \(Y\)=# white.  
\[
p(x,y)=\frac{\binom{3}{x}\binom{4}{y}\binom{5}{3-x-y}}{\binom{12}{3}},\quad x+y\le 3.
\]
Numerical joint table given in source.

**Conditions for a joint pmf**
1. \(0\le p(x,y)\le 1\)
2. Double sum = 1
3. Probability of a region = sum over that region

(Further: marginals, continuous joint densities, independence — in original PDF.)

---
*Structural extract for resource index.*
