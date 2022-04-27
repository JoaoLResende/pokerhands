library(tidyverse)

list_of_files <-list.files(path = "bremp-gg/")

cleaning_poker_hands <- function(){

    for (turn in 1:length(list_of_files)) {

    current_file <- list_of_files[turn]

    current_hand <- read.delim(file =file.path(getwd(), "bremp-gg",current_file) , header = TRUE, sep = "\t", dec = ".")

current_hand[,1] <- gsub(pattern ="Hero|hero",replacement = "marcos1967", current_hand[,1])


write.table(current_hand, file = paste0("bemp_gg_new/", current_file))

  }
}

cleaning_poker_hands()


