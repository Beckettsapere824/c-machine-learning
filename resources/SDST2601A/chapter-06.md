# Chapter 6: Other Properties of Distributions

Source: SDST2601A / STAT2601A Chapter 6.pdf (14 pages).

## 6.1 Survival Function and Hazard Rate Function

For a positive continuous lifetime random variable \(X\):

**Definition 6.1**  
- Survival function: \(S(t)=\Pr(X>t)=1-F(t)\).  
- Hazard rate (failure rate): \(\lambda(t)=f(t)/S(t)\).

Interpretation: \(\lambda(t)\,dt \approx \Pr(t<X<t+dt \mid X>t)\).

Hazard uniquely determines the distribution:  
\[
F(x)=1-\exp\Bigl(-\int_0^x\lambda(t)\,dt\Bigr).
\]

Relationships among \(F\), \(S\), \(f\), \(\lambda\) summarized in a 4×4 table in the original.

**Example 6.1**  
Exponential has constant hazard \(\lambda(t)=\lambda\) (memoryless).

**Example 6.2**  
Linear hazard \(\lambda(t)=a+bt\) yields Rayleigh when \(a=0\).

---
*Extract for catalog. Full table of relationships and further examples in source PDF.*
