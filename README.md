
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-100%25-lightgrey.svg)
[![Linux build
Status](https://travis-ci.org/hrbrmstr/pluralize.svg?branch=master)](https://travis-ci.org/hrbrmstr/pluralize)
[![Coverage
Status](https://codecov.io/gh/hrbrmstr/pluralize/branch/master/graph/badge.svg)](https://codecov.io/gh/hrbrmstr/pluralize)
![Minimal R
Version](https://img.shields.io/badge/R%3E%3D-3.6.0-blue.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

# pluralize

Pluralize and ‘Singularize’ Any (English) Word

## Description

Tools are provided to create plural, singular and regular forms of
English words along with tools to augment the built-in rules to fit
specializied needs. Core functionality is based on a JavaScript library,
<https://github.com/blakeembrey/pluralize>.

## What’s Inside The Tin

The following functions are implemented:

  - `add_irregular_rule`: Add a custom rule for making “deregularizing”
    a word
  - `add_plural_rule`: Add a custom rule for making a word plural
  - `add_singular_rule`: Add a custom rule for making a word singular
  - `add_uncountable_rule`: Make a word “uncountable”
  - `is_plural`: Test plural state of a word
  - `pluralize`: Pluralize a word
  - `singularize`: Singularize a word

## Installation

``` r
remotes::install_gitlab("hrbrmstr/pluralize")
# or
remotes::install_github("hrbrmstr/pluralize")
```

NOTE: To use the ‘remotes’ install options you will need to have the
[{remotes} package](https://github.com/r-lib/remotes) installed.

## Usage

``` r
library(pluralize)

# current version
packageVersion("pluralize")
## [1] '0.2.0'
```

``` r
pluralize('test')
## [1] "tests"

singularize('test')
## [1] "test"

singularize(c("boats", "houses", "cats", "rivers"))
## [1] "boat"  "house" "cat"   "river"

pluralize(singularize(c("boats", "houses", "cats", "rivers")))
## [1] "boats"  "houses" "cats"   "rivers"

singularize(c("buses", "wishes", "pitches", "boxexs"))
## [1] "bus"   "wish"  "pitch" "boxex"

pluralize(singularize(c("buses", "wishes", "pitches", "boxexs")))
## [1] "buses"   "wishes"  "pitches" "boxexes"

singularize(c("pennies", "spies", "babies", "cities", "daisies"))
## [1] "penny"  "spy"    "baby"   "city"   "daisie"

pluralize(singularize(c("pennies", "spies", "babies", "cities", "daisies")))
## [1] "pennies" "spies"   "babies"  "cities"  "daisies"

singularize(c("sheep", "fish", "deer", "species", "aircraft"))
## [1] "sheep"    "fish"     "deer"     "specie"   "aircraft"

pluralize(singularize(c("sheep", "fish", "deer", "species", "aircraft")))
## [1] "sheep"    "fish"     "deer"     "species"  "aircraft"

pluralize('test', 5)
## [1] "tests"

pluralize('test', 5, TRUE)
## [1] "5 tests"

pluralize('regex')
## [1] "regexes"

add_plural_rule("gex", "gexii")

pluralize('regex')
## [1] "regexii"

singularize('singles')
## [1] "single"

add_singular_rule("singles", "singular")

singularize('singles')
## [1] "singular"

pluralize("irregular")
## [1] "irregulars"

pluralize(c("woman", "man", "child", "tooth", "foot", "person", "leaf"))
## [1] "women"    "men"      "children" "teeth"    "feet"     "people"   "leaves"

singularize(c("woman", "man", "child", "tooth", "foot", "person", "leaf"))
## [1] "woman"  "man"    "child"  "tooth"  "foot"   "person" "leaf"

add_irregular_rule("irregular", "regular")

pluralize("irregular")
## [1] "regular"

pluralize("paper")
## [1] "papers"

add_uncountable_rule("paper")

pluralize("paper")
## [1] "paper"
```

### pluralize Metrics

| Lang | \# Files | (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
| :--- | -------: | --: | --: | ---: | ----------: | ---: | -------: | ---: |
| HTML |        1 | 0.1 | 367 | 0.79 |          33 | 0.28 |        2 | 0.01 |
| Rmd  |        2 | 0.2 |  58 | 0.12 |          72 | 0.61 |       71 | 0.39 |
| R    |        7 | 0.7 |  40 | 0.09 |          13 | 0.11 |      108 | 0.60 |

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
