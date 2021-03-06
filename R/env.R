# Tools for storing state in environment variables.
getenv <- function(x) {
  strsplit(Sys.getenv(x, unset = ""), "|||", fixed = TRUE)[[1]]
}

setenv <- function(name, value) {
  value <- paste(value, collapse = "|||")
  call <- list(value)
  names(call) <- name
  do.call(Sys.setenv, call)
}

unsetenv <- function(name) {
  Sys.unsetenv(name)
}

# for autocompletion
.packrat.env <- list(
  "R_PACKRAT_DEFAULT_LIBPATHS"
)
names(.packrat.env) <- unlist(.packrat.env)
