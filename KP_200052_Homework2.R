#Problem 1 # Write a loop which iterates over all the numbers from 1 to 10 and prints
# them multiplied by 3
m=matrix(1:10, nrow=10, ncol=1)

c=matrix(m*3, nrow=10, ncol=1)

#find c in the console

#Problem 2 # Write a loop which chooses 10 random numbers, one at a time from a normal
# distribution (use rnorm and see the help ?rnorm) and prints the number
# if it is bigger than 1.

for (i in rnorm(1:10)) {
  if(i>1) print(i)
}

#Problem 3  What is the probability that out of a group of 6 men and 8 women, if we pick
# 5 people at random, exactly 3 will be men?
# Use a for loop, which simulates the picking.

#Males are 1 and females are 0
a <- c(1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0)
ResultsVector <- NULL
ResultsVector2 <- NULL
for (i in 1:20000){
  ResultsVector <- c(sample(a, 5, replace = FALSE))
  if (sum(ResultsVector)==3){
    ResultsVector2 = c(ResultsVector2, 1)
  }
  else{ResultsVector2 = c(ResultsVector2, 0)
  
  }
}
sum(ResultsVector2) / length(ResultsVector2)
