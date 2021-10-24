#!/usr/bin/env Rscript

all_docs <- list.files(pattern = "\\.Rmd$")
for (name in all_docs) {
  bookdown::render_book(name, "bookdown::gitbook")
}
