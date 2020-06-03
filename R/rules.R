#' Add a custom rule for making a word singular
#'
#' @param plural_word plural form of a word
#' @param singular_word desired singular form of a word
#' @return nothing (function produces a side effect of modifying
#'         in-memory internal package envrionment)
#' @export
#' @examples
#' add_singular_rule("singles", "singular")
#' singularize('singles')
#' pluralize("irregular")
#' pluralize(c("woman", "man", "child", "tooth", "foot", "person", "leaf"))
#' singularize(c("woman", "man", "child", "tooth", "foot", "person", "leaf"))
add_singular_rule <- function(plural_word, singular_word) {
  .pkgenv$ct$call("pluralize.addSingularRule",
                  JS(sprintf("/%s/i", plural_word)),
                  singular_word)
}

#' Add a custom rule for making a word plural
#'
#' @param singular_word desired singular form of a word
#' @param plural_word plural form of a word
#' @export
#' @examples
#' add_plural_rule("gex", "gexii")
#' pluralize('regex')
#' singularize('singles')
add_plural_rule <- function(singular_word, plural_word) {
  .pkgenv$ct$call("pluralize.addPluralRule",
                  JS(sprintf("/%s/i", singular_word)),
                  plural_word)
}

#' Add a custom rule for making "deregularizing" a word
#'
#' "\code{regular}" is the "deregularized" form of "\code{irregular}".
#' Calling \code{plural("irregular")} will return "\code{regular}" if you
#' define a rule such as \code{add_irregular_rule("irregular", "regular")}.
#'
#' @param irregular_word the irregular form of the word
#' @param regular_word regular form of a word
#' @export
#' @return nothing (function produces a side effect of modifying
#'         in-memory internal package envrionment)
#' @examples
#' add_irregular_rule("irregular", "regular")
#' pluralize("irregular")
#' pluralize("paper")
add_irregular_rule <- function(irregular_word, regular_word) {
  .pkgenv$ct$call("pluralize.addPluralRule", irregular_word, regular_word)
}

#' Make a word "uncountable"
#'
#' Sometimes you don't want to turn "\code{paper}" into "\code{papers}". You
#' can use this function to make a word "uncountable".
#'
#' @param uncountable_word the word that's, well, uncountable
#' @return nothing (function produces a side effect of modifying
#'         in-memory internal package envrionment)
#' @export
#' @examples
#' add_uncountable_rule("paper")
#' pluralize("paper")
add_uncountable_rule <- function(uncountable_word) {
  .pkgenv$ct$call("pluralize.addUncountableRule", uncountable_word)
}
