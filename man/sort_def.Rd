% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sort.r
\encoding{UTF-8}
\name{sort_def}
\alias{sort_def}
\title{Create a sort definition object}
\usage{
sort_def(field, op, order = c("ascending", "descending"))
}
\arguments{
\item{field}{the field name to aggregate over.}

\item{op}{a valid \href{http://vega.github.io/vega-lite/docs/sort.html#aggregate}{aggregation operator}.}

\item{order}{either \code{ascending} or \code{descending}}
}
\description{
You can sort by aggregated value of another “sort” field by creating a
sort field definition object. All three properties must be non-\code{NULL}.
}

