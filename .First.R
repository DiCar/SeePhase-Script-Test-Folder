# Convert Windows file path to R file path
# Simply copy the path to your clipboard (ctrl + c) and then run the function as pathPrep(). 
# No need for an argument. The path is printed to your console correctly and written to your clipboard for easy pasting to a script. 

pathPrep <- function(path = "clipboard") {
  y <- if (path == "clipboard") {
    readClipboard()
  } else {
    cat("Please enter the path:\n\n")
    readline()
  }
  x <- chartr("\\", "/", y)
  writeClipboard(x)
  return(x)
}