#' Pluralize and Singularize Any Word
#'
#' Based on the \href{https://github.com/blakeembrey/pluralize}{pluralize.js}
#' javascript library by \code{Blake Embrey}.
#'
#' @name pluralize
#' @docType package
#' @author Bob Rudis (@@hrbrmstr)
#' @import V8 purrr
#' @examples
#' pluralize('test')
#' singularize('test')
#' pluralize('test', 5)
#' pluralize('test', 5, TRUE)
#' pluralize('regex')
#' add_plural_rule("gex", "gexii")
#' pluralize('regex')
#' singularize('singles')
#' add_singular_rule("singles", "singular")
#' singularize('singles')
#' pluralize("irregular")
#' add_irregular_rule("irregular", "regular")
#' pluralize("irregular")
#' pluralize("paper")
#' add_uncountable_rule("paper")
#' pluralize()
NULL
