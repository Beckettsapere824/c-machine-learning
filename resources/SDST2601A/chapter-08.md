# Chapter 8: Conditional Distributions

Source: SDST2601A / STAT2601A Chapter 8.pdf (10 pages).

## 8.1 Conditional Distributions

Knowledge of one variable often updates belief about another (height vs weight example).

Recall: \(\Pr(E|F)=\Pr(E\cap F)/\Pr(F)\) when \(\Pr(F)>0\).

**Definition 8.1**  
For discrete bivariate \((X,Y)\) with joint pmf \(p(x,y)\) and marginals \(p_X,p_Y\):

\[
p_{Y|X}(y|x)=\frac{p(x,y)}{p_X(x)}\qquad(p_X(x)>0),
\]
\[
p_{X|Y}(x|y)=\frac{p(x,y)}{p_Y(y)}\qquad(p_Y(y)>0).
\]

**Example 8.1**  
Re-uses the bivariate hypergeometric table of Chapter 7.  
Row-normalised tables give \(Y|X=x\); column-normalised give \(X|Y=y\).  
Shows how uncertainty on one variable is reduced by observing the other.

---
*Extract for catalog. Further continuous conditional densities and independence criteria in source PDF.*
