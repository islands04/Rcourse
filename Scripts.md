---
layout: default
title: Scripts
ghurl: https://github.com/leeper/Rcourse/tree/gh-pages/Scripts
---

# Tutorial Scripts #

Below you will find links to a number of fully executible R scripts (written in Roxygen) that walk through various aspects of R programming.

## The R language ##

* [Basic math]({{ page.ghurl }}/basicmath.r)
* [Variables and assignment]({{ page.ghurl }}/variables.r)
* [Matrix algebra]({{ page.ghurl }}/matrixalgebra.r)
* Data structures:
  * [Vectors]({{ page.ghurl }}/vectors.r) and [Vector indexing]({{ page.ghurl }}/vectorindexing.r)
  * [Matrices]({{ page.ghurl }}/matrices.r)
  * [Lists]({{ page.ghurl }}/lists.r)
  * [Dataframes]({{ page.ghurl }}/dataframes.r)
* Object [classes]({{ page.ghurl }}/classes.r), plus more information on:
  * [Factors]({{ page.ghurl }}/factors.r)
  * [Logicals]({{ page.ghurl }}/logicals.r)
* [Looking at objects]({{ page.ghurl }}/objects.r)
* [Missing values]({{ page.ghurl }}/NA.r)


## Data as dataframes ##

* Reading in data
  * `read.csv`, `read.table`, `scan`
  * `load`
  * `library(foreign)`: `read.spss`, `read.dta`, etc.
  * Rarer cases: `readLines` and `read.fwf`
* [Viewing dataframe structure]({{ page.ghurl }}/dataframe-structure.r)
* `save` and `write.csv`


## Data processing ##

* [Recoding vectors]({{ page.ghurl }}/recoding.r)
* scale construction (additive, multiplicative, logical)
  * vector addition with `+`
  * `rowSums` and `colSums`
  * `rowMeans` and `colMeans`
  * See also: [Matrix algebra]({{ page.ghurl }}/matrixalgebra.r)
  * Note also other more advanced tools: `factanal`, `princomp`, `library(psych)`, and `library(IRToys)`
* handling missing data
  * Global: `na.omit`
  * Command-specific options: `na.rm=...`
* `subset` and `sample` and `order`


## Data summaries ##

* [Univariate data summaries]({{ page.ghurl }}/univariate.r) (including `summary`)
* [Data tables and crosstables]({{ page.ghurl }}/tables.r)
* [Correlations and partial correlations]({{ page.ghurl }}/correlation.r)
* [Printing numerics]({{ page.ghurl }}/numeric-printing.r)


## Plotting as data summary ##

* [Data summary plots]({{ page.ghurl }}/summaryplots.r)
  * [Rugs: Marginal distributions for scatterplots]({{ page.ghurl }}/rugs.r)
  * [Local regression (LOWESS/LOESS) for scatterplots]({{ page.ghurl }}/localregression.r) TODO
  * [`jitter` for scatterplots of categorical data]({{ page.ghurl }}/jitter.r) TODO
  * `plot` for [Line plots]({{ page.ghurl }}/lineplots.r) TODO
  * add ons: `lines`, `segments` (for error bars), `polygon`, `points`, `abline`, `text`, `legend`
* [Graphical parameters]({{ page.ghurl }}/graphicalparameters.r) TODO
* [Plotting Colors]({{ page.ghurl }}/plotcolors.r) TODO
  * `gray`, `rgb`, `rainbow`, `heat.colors`
* [Saving plots]({{ page.ghurl }}/savingplots.r) TODO
  * `pdf`, `jpeg`, `png`, `tiff`, `bmp`, `svg`
  * `dev.print`, `dev.copy`, `dev2bitmap`, `savePlot`
* [Plotting functions with `curve`]({{ page.ghurl }}/curve.r) TODO
* Note: **ggplot2**, **lattice**, and **grid**


## Statistics ##

* `chisq.test`, `t.test`, `cor.test`, `prop.test`, `binom.test`
* `aov`
* other significance tests (nonparametrics and library(coin))
  * `t.test` versus `wilcox_test` versus `coin::independence_test`
  * `aov` versus `kruskal.test`
  * Variance tests: `var.test`, `fligner.test`, `bartlett.test`
* `by`
* Distributions
  * Normal: `rnorm`, `pnorm`, `qnorm`, and `dnorm`
  * Also look at uniform, binomial, and t distributions


## Regression ##

* [bivariate OLS]({{ page.ghurl }}/olsbivariate.r) TODO
* multivariate OLS
* `summary`
* model output (`coef`, etc.)
* [Heteroskedasticity-consistent SEs]({{ page.ghurl }}/olsrobustSEs.r)
* [Standardized coefficients]({{ page.ghurl }}/standardizedcoefficients.r)
* [Regression in matrix form]({{ page.ghurl }}/matrixols.r)
* Model predicted values (`predict`)
* model formulae
  * interactions using `*` and `:`
  * factors versus continuous entry of variables
  * intercepts
  * offset


## Regression plotting ##

* [Plots for regression diagnostics]({{ page.ghurl }}/olsplots.r)
  * Default plots from `plot(lm)`
  * Residual plots
  * Scatterplots
* [Plots for regression summaries]({{ page.ghurl }}/olsresultplots.r)
  * Plotting slopes and regression results
* [Plots for linear interaction effects]({{ page.ghurl }}/olsinteractionplots.r)
  * Predicted outcomes
  * Marginal effects


## GLM ##

* models, again
* Revisit distributions and link functions
* prediction
* plotting data
* plotting predicted probabilities


## Experiments ##

* ANOVA
* [Power and minimum detectable effects]({{ page.ghurl }}/power.r)
* Clustering
* Analysis of noncompliance/LATEs


## Reproducible research ##

* Using `source`
* comments, again
* knitr `stitch`
* Integration with LaTeX reports
  * `knit`
  * `xtable` (also `hmisc::Latex`, **apsrtable**, and **stargazer**)
* Presentations with beamer
* Web publishing with Rmarkdown
  * Slidify
* [Public data archiving with **dvn**]({{ page.ghurl }}/dvn.r)


## Repeated tasks ##

* loops (`for`, `while`)
* `apply` and `*apply` family
* Split-Apply-Combine (`by`, `split`)
* Bootstrapping/permutations (`sample` and `replicate`)
* Aggregation functions (`ave`, `aggregate`, etc.)


## User-Defined functions ##

* Variable scope and environments
* Return values (`return` and `invisible`)
* Custom classes
* Default arguments
* `print` and `summary` S3 methods


## Over-time data ##

* Time-series (`ts` class)
* Panel data (`plm`)
* Mixed effects
* Multi-level models


## Text processing ##

* `paste`
* `strsplit`, `nchar`, etc.
* Regular expressions


## Other advanced topics ##

* Bayes: **MCMCpack**, **RJags**, **RBugs**, RStan
* Big data: data.table, parallel computing
* Mapping
* Web services: **twitteR**, **MTurkR**