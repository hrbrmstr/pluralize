pluralize : Pluralize and Singularize Any Word

Based on the [pluralize.js](https://github.com/blakeembrey/pluralize) javascript library by Blake Embrey.

The following functions are implemented:

-   `add_irregular_rule` : Add a custom rule for making "deregularizing" a word
-   `add_plural_rule` : Add a custom rule for making a word plural
-   `add_singular_rule` : Add a custom rule for making a word singular
-   `add_uncountable_rule` : Make a word "uncountable"
-   `pluralize` : Pluralize and Singularize Any Word
-   `singularize` : Singularize a word

### News

-   Version 0.1.0 released

### Installation

``` r
devtools::install_github("hrbrmstr/pluralize")
```

### Usage

``` r
library(pluralize)

# current verison
packageVersion("pluralize")
```

    ## [1] '1.0'

``` r
pluralize('test')
```

    ## [1] "tests"

``` r
singularize('test')
```

    ## [1] "test"

``` r
pluralize('test', 5)
```

    ## [1] "tests"

``` r
pluralize('test', 5, TRUE)
```

    ## [1] "5 tests"

``` r
pluralize('regex')
```

    ## [1] "regexes"

``` r
add_plural_rule("gex", "gexii")
pluralize('regex')
```

    ## [1] "regexii"

``` r
singularize('singles')
```

    ## [1] "single"

``` r
add_singular_rule("singles", "singular")
singularize('singles')
```

    ## [1] "singular"

``` r
pluralize("irregular")
```

    ## [1] "irregulars"

``` r
add_irregular_rule("irregular", "regular")
pluralize("irregular")
```

    ## [1] "regular"

``` r
pluralize("paper")
```

    ## [1] "papers"

``` r
add_uncountable_rule("paper")
pluralize("paper")
```

    ## [1] "paper"

### Test Results

``` r
library(pluralize)
library(testthat)

date()
```

    ## [1] "Wed Jan  6 18:16:13 2016"

``` r
test_dir("tests/")
```

    ## testthat results ========================================================================================================
    ## OK: 0 SKIPPED: 0 FAILED: 0
