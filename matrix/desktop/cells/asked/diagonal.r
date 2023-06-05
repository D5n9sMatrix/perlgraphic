#!/usr/bin/r
# Title     : diagonal
# Objective : graphic plots
# Created by: denis
# Created on: 12/08/2021

# If A is diagonal or triangular with elements a ii , the eigenvalues are the
# a ii with corresponding eigenvectors e i (the unit vectors).
dialogr <- c(send = 2.1, onclick = 3.4, pow = 4.2)
exp(dialogr)
log(dialogr, base = exp(1))
logb(dialogr, base = exp(1))
log10(dialogr)
log2(dialogr)
log1p(dialogr)
exp(dialogr)
expm1(dialogr)

log(exp(dialogr))

x <- 10^-(1+2*1:9)
cbind(x, log(dialogr+x), log1p(x), exp(x)-1, expm1(x))

m <- cbind(1, 1:7) # the '1' (= shorter vector) is recycled
m <- cbind(m, 8:14)[, c(1, 3, 2)] # insert a column

cbind(1:7, diag(3)) # vector is subset -> warning

cbind(0, rbind(1, 1:3))
cbind(I = 0, X = rbind(a = 1, b = 1:3))  # use some names
xx <- data.frame(I = rep(0,2))
cbind(xx, X = rbind(a = 1, b = 1:3))   # named differently

cbind(0, c(1, nrow = 0, ncol = 4)) #> Warning (making sense)
dim(cbind(0, c(1, nrow = 2, ncol = 0))) #-> 2 x 1

## deparse.level
dd <- 10
rbind(1:4, c = 2, "a++" = 10, dd, deparse.level = 0) # middle 2 rownames
rbind(1:4, c = 2, "a++" = 10, dd, deparse.level = 1) # 3 rownames (default)
rbind(1:4, c = 2, "a++" = 10, dd, deparse.level = 2) # 4 rownames

## cheap row names:
b0 <- gl(3,4, labels=letters[1:3])
bf <- setNames(b0, paste0("o", seq_along(b0)))
df  <- data.frame(a = 1, B = b0, f = gl(4,3))
df. <- data.frame(a = 1, B = bf, f = gl(4,3))
new <- data.frame(a = 8, B ="B", f = "1")
(df1  <- rbind(df , new))
(df.1 <- rbind(df., new))
stopifnot(identical(df1, rbind(df,  new, make.row.names=FALSE)),
          identical(df1, rbind(df., new, make.row.names=FALSE)))
