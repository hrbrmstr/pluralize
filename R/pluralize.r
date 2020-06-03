#' Pluralize a word
#'
#' If the built-in rules are not sufficient, use \code{add_plural_rule()} to
#' customize the behavior.
#'
#' @param x character vector of words to make plural
#' @param n amount of plural (some plurals change by amount and this also impacts
#'        the \code{prepend} functionality)
#' @param prepend should we prepend the value of \code{n} to the output? Default: \code{FALSE}
#' @return character vector of modified pluralized words
#' @export
#' @rdname pluralize-function
#' @examples
#' pluralize('test')
#' pluralize('test', 5)
#' pluralize('test', 5, TRUE)
#' pluralize('regex')
pluralize <- function(x, n=2, prepend=FALSE) {
  unname(sapply(x, function(y) {
    .pkgenv$ct$call("pluralize", y, n, prepend)
  }))
}

