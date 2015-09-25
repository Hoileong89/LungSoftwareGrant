#!/usr/bin/env Rscript
#

library(ggplot2)
library(shiny)
library(ggvis)
library(rmarkdown)
library( RISmed )

srcdir<-"./"
buildrmd='stitchedSlides.Rmd'

rawrmds <- c( "formatSlides.Rmd",
              "significance.Rmd",
              "innovation.Rmd",
              "prelimData.Rmd",
              "coreTools.Rmd",
              "competitions/competitions.Rmd",
              "antsNeuro.Rmd",
              "evaluation/antsvfreesurfer2.Rmd",
              "lung/antsLung.Rmd"
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
