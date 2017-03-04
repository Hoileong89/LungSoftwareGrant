#!/usr/bin/env Rscript
#

library(ggplot2)
library(shiny)
library(ggvis)
library(rmarkdown)
library( RISmed )

srcdir<-"./"
buildrmd='stitchedIwpiSlides.Rmd'

rawrmds <- c( "formatIwpiSlides.Rmd",
              "significance.Rmd"
               )

for( x in 1:length( rawrmds ) ) {
  if( x == 1 ) {
    cmd <- paste( "cat ", rawrmds[x], " > ", buildrmd )
  } else {
  cmd<-paste( "cat ", rawrmds[x], " >> ", buildrmd )
  }
  system( cmd )
}
render( buildrmd, clean=TRUE )
