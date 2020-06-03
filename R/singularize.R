#' Singularize a word
#'
#' If the built-in rules are not sufficient, use \code{add_singular_rule()} to
#' customize the behavior.
#'
#' @param x vector of words to make singular
#' @return modified character vector of singularized words
#' @export
#' @examples
#' singularize('test')
#' singularize(c("boats", "houses", "cats", "rivers"))
#' pluralize(singularize(c("boats", "houses", "cats", "rivers")))
#' singularize(c("buses", "wishes", "pitches", "boxexs"))
#' pluralize(singularize(c("buses", "wishes", "pitches", "boxexs")))
#' singularize(c("pennies", "spies", "babies", "cities", "daisies"))
#' pluralize(singularize(c("pennies", "spies", "babies", "cities", "daisies")))
#' singularize(c("sheep", "fish", "deer", "species", "aircraft"))
#' pluralize(singularize(c("sheep", "fish", "deer", "species", "aircraft")))
singularize <- function(x) {
  unname(sapply(x, function(y) { .pkgenv$ct$call("pluralize", y, 1)}))
}


