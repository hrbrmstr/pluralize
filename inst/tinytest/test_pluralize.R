library(pluralize)

expect_equal(pluralize('test'), "tests")
expect_equal(pluralize('test', 5), "tests")
expect_equal(pluralize('test', 5, TRUE), "5 tests")
expect_equal(pluralize('regex'), "regexes")

expect_equal(singularize('test'), "test")

expect_equal(
  singularize(c("boats", "houses", "cats", "rivers")),
  c("boat", "house", "cat", "river")
)

expect_equal(
  pluralize(singularize(c("boats", "houses", "cats", "rivers"))),
  c("boats", "houses", "cats", "rivers")
)

expect_equal(
  singularize(c("buses", "wishes", "pitches", "boxexs")),
  c("bus", "wish", "pitch", "boxex")
)

add_plural_rule("gex", "gexii")
expect_equal(pluralize('regex'), "regexii")

add_singular_rule("singles", "singular")
expect_equal(singularize('singles'), "singular")

add_irregular_rule("irregular", "regular")
expect_equal(pluralize("irregular"), "regular")

add_uncountable_rule("paper")
expect_equal(pluralize("paper"), "paper")
