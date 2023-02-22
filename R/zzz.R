# holding place for things we want to keep around but not visible
.pkgenv <- new.env(parent=emptyenv())

.onLoad <- function(...) {

  # read in the suffixes using V8
  ct <- v8()
  assign("ct", ct, envir=.pkgenv)

  ct$source(system.file("js/pluralize.js", package="pluralize"))

}
