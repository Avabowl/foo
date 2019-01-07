# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  writeLines("
\u0048\u0061\u0070\u0070\u0079 \u004e\u0065\u0077 \u0059\u0065\u0061\u0072 \u0074\u006f \u004c\u0069\u0061\u006f\u004c\u0061\u0062\u0021
\u002d\u002d\u002d\u002d\u002d\u002d
  \u005c
   \u005c
      \u005f
 \u003c\u0060\u002d\u002d\u0027\u005c\u003e\u005f\u005f\u005f\u005f\u005f\u005f
 \u002f\u002e \u002e  \u0060\u0027     \u005c
\u0028\u0060\u0027\u0029  \u002c        \u0040
 \u0060\u002d\u002e\u005f\u002c        \u002f
    \u0029\u002d\u0029\u005f\u002f\u002d\u002d\u0028 \u003e
   \u0027\u0027\u0027\u0027  \u0027\u0027\u0027\u0027")
}
