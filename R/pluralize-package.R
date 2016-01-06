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
#' singularize(c("boats", "houses", "cats", "rivers"))
#' pluralize(singularize(c("boats", "houses", "cats", "rivers")))
#' singularize(c("buses", "wishes", "pitches", "boxexs"))
#' pluralize(singularize(c("buses", "wishes", "pitches", "boxexs")))
#' singularize(c("pennies", "spies", "babies", "cities", "daisies"))
#' pluralize(singularize(c("pennies", "spies", "babies", "cities", "daisies")))
#' singularize(c("sheep", "fish", "deer", "species", "aircraft"))
#' pluralize(singularize(c("sheep", "fish", "deer", "species", "aircraft")))
#' pluralize('test', 5)
#' pluralize('test', 5, TRUE)
#' pluralize('regex')
#' add_plural_rule("gex", "gexii")
#' pluralize('regex')
#' singularize('singles')
#' add_singular_rule("singles", "singular")
#' singularize('singles')
#' pluralize("irregular")
#' pluralize(c("woman", "man", "child", "tooth", "foot", "person", "leaf"))
#' singularize(c("woman", "man", "child", "tooth", "foot", "person", "leaf"))
#' add_irregular_rule("irregular", "regular")
#' pluralize("irregular")
#' pluralize("paper")
#' add_uncountable_rule("paper")
#' pluralize("paper")
NULL
