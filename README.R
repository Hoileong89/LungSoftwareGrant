library( rmarkdown )
library( ggplot2 )
library( RISmed )

stitchedFile <- "stitched.Rmd";

rmdFiles <- c( "format.Rmd", "specificAims.Rmd", "researchStrategy.Rmd" )

for( i in 1:length( rmdFiles ) )
  {
  if( i == 1 )
    {
    cmd <- paste( "cat", rmdFiles[i], ">", stitchedFile )
    } else {
    cmd <- paste( "cat", rmdFiles[i], ">>", stitchedFile )
    }
  system( cmd )
  }
render( stitchedFile )

