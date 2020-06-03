#' Test plural state of a word
#'
#' @param x vector of words to test
#' @return logical vector
#' @export
#' @examples
#' is_singular(c("boats", "house", "cats", "river"))
#' is_plural(c("boats", "house", "cats", "river"))
is_plural <- function(x) {
  unname(sapply(x, function(y) { .pkgenv$ct$call("pluralize.isPlural", y)}))
}

#' @rdname is_plural
#' @export
is_singular <- function(x) {
  unname(sapply(x, function(y) { .pkgenv$ct$call("pluralize.isSingular", y)}))
}
