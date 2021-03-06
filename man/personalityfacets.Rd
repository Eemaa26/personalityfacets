% Generated by roxygen2 (4.0.1): do not edit by hand
\docType{package}
\name{personalityfacets}
\alias{personalityfacets}
\alias{personalityfacets-package}
\title{The personalityfacets Package}
\description{
This package provides various functions for examining the relationship
between personality facets, factors, and criteria.
}
\details{
The Package performs double adjusted r-squared bootstrapping on population r-squared change.
The two main functions are  \link{bootstrap_r_squared_change}
and \link{facets_semi_partial_r_table}.

\link{bootstrap_r_squared_change} can be used to obtain bootstrap confidence intervals on the
population r-squared change. There are also various support functions. \link{regression}
is a convenient way of calling a regression with many predictors. \link{adjusted_r_squared}
and \link{lm_adjusted_r_squared} provides several options for obtaining adjusted r-squared.

\link{facets_semi_partial_r_table} decomposes the relationship between a set of facets and a criterion.
It does this by presenting a range of semi-partial correlations.

Additional functionality to explore facets and factors may be added in the future.
}
\author{
Jeromy Anglim
}
\references{
Anglim, J., Grant, S. (under review) Estimating Incremental Criterion
Prediction of Personality Facets over Factors.
}

