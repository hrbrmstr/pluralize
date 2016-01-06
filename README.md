<!-- README.md is generated from README.Rmd. Please edit that file -->


<div style="padding-bottom:20px">Made with <img src="v8.png"/></div>
`pluralize` : Pluralize and Singularize Any Word

Based on the [pluralize.js](https://github.com/blakeembrey/pluralize) javascript library by Blake Embrey.

The following functions are implemented:

- `add_irregular_rule` :	Add a custom rule for making "deregularizing" a word
- `add_plural_rule` :	Add a custom rule for making a word plural
- `add_singular_rule` :	Add a custom rule for making a word singular
- `add_uncountable_rule` :	Make a word "uncountable"
- `pluralize` :	Pluralize and Singularize Any Word
- `singularize` :	Singularize a word

### News

- Version 0.1.0 released

### Installation


```r
devtools::install_github("hrbrmstr/pluralize")
```



### Usage


```r
library(pluralize)

# current verison
packageVersion("pluralize")
#> [1] '1.0'

pluralize('test')
#> [1] "tests"
singularize('test')
#> [1] "test"
singularize(c("boats", "houses", "cats", "rivers"))
#> [1] "boat"  "house" "cat"   "river"
pluralize(singularize(c("boats", "houses", "cats", "rivers")))
#> [1] "boats"  "houses" "cats"   "rivers"
singularize(c("buses", "wishes", "pitches", "boxexs"))
#> [1] "bus"   "wish"  "pitch" "boxex"
pluralize(singularize(c("buses", "wishes", "pitches", "boxexs")))
#> [1] "buses"   "wishes"  "pitches" "boxexes"
singularize(c("pennies", "spies", "babies", "cities", "daisies"))
#> [1] "penny" "spy"   "baby"  "city"  "daisy"
pluralize(singularize(c("pennies", "spies", "babies", "cities", "daisies")))
#> [1] "pennies" "spies"   "babies"  "cities"  "daisies"
singularize(c("sheep", "fish", "deer", "species", "aircraft"))
#> [1] "sheep"    "fish"     "deer"     "species"  "aircraft"
pluralize(singularize(c("sheep", "fish", "deer", "species", "aircraft")))
#> [1] "sheep"     "fish"      "deer"      "species"   "aircrafts"
pluralize('test', 5)
#> [1] "tests"
pluralize('test', 5, TRUE)
#> [1] "5 tests"
pluralize('regex')
#> [1] "regexes"
add_plural_rule("gex", "gexii")
pluralize('regex')
#> [1] "regexii"
singularize('singles')
#> [1] "single"
add_singular_rule("singles", "singular")
singularize('singles')
#> [1] "singular"
pluralize("irregular")
#> [1] "irregulars"
pluralize(c("woman", "man", "child", "tooth", "foot", "person", "leaf"))
#> [1] "women"    "men"      "children" "teeth"    "feet"     "people"   "leaves"
singularize(c("woman", "man", "child", "tooth", "foot", "person", "leaf"))
#> [1] "woman"  "man"    "child"  "tooth"  "foot"   "person" "leaf"
add_irregular_rule("irregular", "regular")
pluralize("irregular")
#> [1] "regular"
pluralize("paper")
#> [1] "papers"
add_uncountable_rule("paper")
pluralize("paper")
#> [1] "paper"
```

### Test Results


```r
library(pluralize)
library(testthat)

date()
#> [1] "Wed Jan  6 18:28:30 2016"

test_dir("tests/")
#> testthat results ========================================================================================================
#> OK: 0 SKIPPED: 0 FAILED: 0
```

### Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
