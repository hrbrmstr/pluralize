% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pluralize.r
\name{pluralize}
\alias{pluralize}
\title{Pluralize a word}
\usage{
pluralize(x, n = 2, prepend = FALSE)
}
\arguments{
\item{x}{character vector of words to make plural}

\item{n}{amount of plural (some plurals change by amount and this also impacts
the \code{prepend} functionality)}

\item{prepend}{should we prepend the value of \code{n} to the output? Default: \code{FALSE}}
}
\value{
character vector of modified pluralized words
}
\description{
If the built-in rules are not sufficient, use \code{add_plural_rule()} to
customize the behavior.
}
\examples{
pluralize('test')
pluralize('test', 5)
pluralize('test', 5, TRUE)
pluralize('regex')
}
