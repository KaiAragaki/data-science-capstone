download_file <- function(url, file_name, destination) {
  dest_path <- path(destination, file_name, ext = "zip")
  download.file("https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip", destfile = dest_path)
  dest_path
}
