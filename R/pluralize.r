#' Add a custom rule for making a word singular
#'
#' @param plural_word plural form of a word
#' @param singular_word desired singular form of a word
#' @export
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
#' @param singular_word desired singular form of a word
#' @param plural_word plural form of a word
#' @export
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
add_irregular_rule <- function(irregular_word, regular_word) {
  .pkgenv$ct$call("pluralize.addPluralRule", irregular_word, regular_word)
}

#' Make a word "uncountable"
#'
#' Sometimes you don't want to turn "\code{paper}" into "\code{papers}". You
#' can use this function to make a word "uncountable".
#'
#' @export
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
add_uncountable_rule <- function(uncountable_word) {
  .pkgenv$ct$call("pluralize.addUncountableRule", uncountable_word)
}

#' Singularize a word
#'
#' If the built-in rules are not sufficient, use \code{add_singular_rule()} to
#' customize the behavior.
#'
#' @param x vector of words to make singular
#' @export
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
singularize <- function(x) {
  unname(map_chr(x, function(y) { .pkgenv$ct$call("pluralize", y, 1)}))
}

#' Pluralize a word
#'
#' If the built-in rules are not sufficient, use \code{add_plural_rule()} to
#' customize the behavior.
#'
#' @param x character vector of words to make plural
#' @param n amount of plural (some plurals change by amount and this also impacts
#'        the \code{prepend} functionality)
#' @param prepend should we prepend the value of \code{n} to the output? Default: \code{FALSE}
#' @return character vector of pluralized words
#' @export
pluralize <- function(x, n=2, prepend=FALSE) {
  unname(map_chr(x, function(y) {
    .pkgenv$ct$call("pluralize", y, n, prepend)
  }))
}

# holding place for things we want to keep around but not visible
.pkgenv <- new.env(parent=emptyenv())

.onAttach <- function(...) {

  # read in the suffixes using V8
  ct <- v8()
  assign("ct", ct, envir=.pkgenv)

  ct$source(system.file("js/pluralize.js", package="pluralize"))

}
