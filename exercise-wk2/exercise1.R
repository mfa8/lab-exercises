## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# You cannot ads an integer to a string, how does one add a number to a word?

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# would not work because you do not have library(stringr), so it is not loaded

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# there is no such variable "initial", it was never created, it should be 'initials'


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be

my.vector <- c(6, 3, "hello")
typeof(my.vector)


# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(first.vector, second.vector) {
  n <- abs(length(first.vector) - length(second.vector))
  return(paste("The difference in lengths is", n))
}



# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1, 2), c(2, 3, 4, 5))


# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(v1, v2) {
  diff <- abs(length(v1) - length(v2))
  if (length(v1) > length(v2)) {
    return(paste("Your first vector is longer by", diff, "elements."))
  } else if (length(v2) > length(v1)) {
    return(paste("Your second vector is longer by", diff, "elements."))
  }
  return("both vectors are equal")
}
# Pass two vectors to your `DescribeDifference` function


# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

# Send 3 vectors to your function to test it.

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters


