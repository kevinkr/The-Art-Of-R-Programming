#######
# Chapter 2
#######
#
# From Chapter 1
# Each help entry comes with examples
example(seq)
example(any)
example(hist)
# Help on the Internet
# www.r-project.org
# www.rseek.org
# cran.r-project.org
# google search like . . . filetype:R <term or topic> -rebol

# all() and any()
x <- 1:10
any(x > 8)
all(x > 88)
any(x > 8)

# find runs of consecutive 1's
findruns <- function(x, k) {
  # x is data frame, k is run length
  n <- length(x)
  runs <- NULL
  for (i in 1:(n-k+1)) {
    if(all(x[i:(i+k-1)] == 1)) runs <- c(runs, i)
  }
  return(runs)
}

y <- c(1, 0, 0, 1, 1, 1, 0, 1, 1)
findruns(y, 3)
# 4
findruns(y, 2)
# 4 5 8

