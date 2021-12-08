library(targets)

source("functions.R")

tar_option_set(packages = c("tidyverse", "fs"))

list(
  tar_target(data_dir, dir_create("data")),
  tar_target(data_path, download_file("https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip", 
                                      "files", data_dir), 
             format = "file"),
  tar_target(extracted_files, unzip(data_path, exdir = data_dir), 
             format = "file")
)
