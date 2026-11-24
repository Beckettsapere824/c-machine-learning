# Some Common Probability Distributions

Source: *Distribution Summary and Statistical Tables.pdf* (4 pages).  
Indexed 2026-11-24 by learn-library-1.

## Discrete & continuous distributions (summary table)

| Distribution of X | Probability mass/density function | E(X) | Var(X) | Moment generating function \(M_X(t)\) |
|-------------------|-----------------------------------|------|--------|--------------------------------------|
| **Bernoulli** Ber(\(p\)), \(0<p<1\) | \(p^x(1-p)^{1-x}\) for \(x=0,1\) | \(p\) | \(p(1-p)\) | \(pe^t + 1 - p\) for \(t\in\mathbb{R}\) |
| **Binomial** B(\(n,p\)), \(n\in\mathbb{N}\), \(0<p<1\) | \(\binom{n}{x}p^x(1-p)^{n-x}\) for \(x=0,1,\dots,n\) | \(np\) | \(np(1-p)\) | \((pe^t + 1 - p)^n\) for \(t\in\mathbb{R}\) |
| **Geometric** Geo(\(p\)), \(0<p<1\) | \((1-p)^{x-1}p\) for \(x=1,2,3,\dots\) | \(1/p\) | \((1-p)/p^2\) | \(pe^t / [1-(1-p)e^t]\) for \(t < -\ln(1-p)\) |
| **Negative binomial** NB(\(r,p\)), \(r\in\mathbb{N}\), \(0<p<1\) | \(\binom{x-1}{r-1}(1-p)^{x-r}p^r\) for \(x=r,r+1,\dots\) | \(r/p\) | \(r(1-p)/p^2\) | \(\bigl(pe^t / [1-(1-p)e^t]\bigr)^r\) for \(t < -\ln(1-p)\) |
| **Hypergeometric** Hyp(\(N,m,n\)) | \(\frac{\binom{m}{x}\binom{N-m}{n-x}}{\binom{N}{n}}\) for \(x\in\{\max(0,n+m-N),\dots,\min(n,m)\}\) | \(nm/N\) | \(\frac{N-n}{N-1}\,n\,\frac{m}{N}\bigl(1-\frac{m}{N}\bigr)\) | — |
| **Poisson** Po(\(\lambda\)), \(\lambda>0\) | \(e^{-\lambda}\lambda^x / x!\) for \(x=0,1,2,\dots\) | \(\lambda\) | \(\lambda\) | \(e^{\lambda(e^t-1)}\) for \(t\in\mathbb{R}\) |
| **Uniform** U(\(a,b\)), \(a<b\) | \(1/(b-a)\) for \(a<x<b\) | \((a+b)/2\) | \((b-a)^2/12\) | — |
| **Exponential** Exp(\(\lambda\)), \(\lambda>0\) | \(\lambda e^{-\lambda x}\) for \(x>0\) | \(1/\lambda\) | \(1/\lambda^2\) | \(\lambda/(\lambda-t)\) for \(t<\lambda\) |
| **Gamma** \(\Gamma(\alpha,\lambda)\), \(\alpha,\lambda>0\) | \(\frac{\lambda^\alpha}{\Gamma(\alpha)}x^{\alpha-1}e^{-\lambda x}\) for \(x>0\) | \(\alpha/\lambda\) | \(\alpha/\lambda^2\) | \(\bigl(\lambda/(\lambda-t)\bigr)^\alpha\) for \(t<\lambda\) |
| **Normal** N(\(\mu,\sigma^2\)), \(\sigma>0\) | \(\frac{1}{\sqrt{2\pi\sigma^2}}\exp\bigl(-(x-\mu)^2/(2\sigma^2)\bigr)\) | \(\mu\) | \(\sigma^2\) | \(\exp(\mu t + \tfrac12\sigma^2 t^2)\) for \(t\in\mathbb{R}\) |
| **Chi-squared** \(\chi^2(r)\), \(r\in\mathbb{N}\) | \(\frac{1}{\Gamma(r/2)2^{r/2}}x^{r/2-1}e^{-x/2}\) for \(x>0\) | \(r\) | \(2r\) | \((1-2t)^{-r/2}\) for \(t<1/2\) |
| **Student’s t** \(t(r)\), \(r\in\mathbb{N}\) | \(\frac{\Gamma((r+1)/2)}{\sqrt{r\pi}\,\Gamma(r/2)}\bigl(1+x^2/r\bigr)^{-(r+1)/2}\) | 0 (for \(r>1\)) | \(r/(r-2)\) (for \(r>2\)) | — |
| **Snedecor’s F** \(F(m,n)\), \(m,n\in\mathbb{N}\) | (see original) | \(n/(n-2)\) (\(n>2\)) | \(\frac{2n^2(m+n-2)}{m(n-2)^2(n-4)}\) (\(n>4\)) | — |
| **Beta** Beta(\(\alpha,\beta\)), \(\alpha,\beta>0\) | \(\frac{\Gamma(\alpha+\beta)}{\Gamma(\alpha)\Gamma(\beta)}x^{\alpha-1}(1-x)^{\beta-1}\) for \(0<x<1\) | \(\alpha/(\alpha+\beta)\) | \(\frac{\alpha\beta}{(\alpha+\beta)^2(\alpha+\beta+1)}\) | — |

**Notes**  
\(\Gamma(\alpha)=\int_0^\infty x^{\alpha-1}e^{-x}\,dx\) for \(\alpha>0\); \(\Gamma(\alpha)=(\alpha-1)\Gamma(\alpha-1)\), \(\Gamma(1)=1\), \(\Gamma(1/2)=\sqrt{\pi}\).

## Additional tables in source PDF

- Area under the Standard Normal Curve (cumulative from 0 to \(z_\alpha\))
- Chi-Squared Distribution Table (critical values by df and tail \(\alpha\))
- \(t\)-Distribution Table (critical values by df and tail \(\alpha\))

Full numerical tables stay in the original PDF; this MD keeps the distribution formulas and pointers.
