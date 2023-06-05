#!/usr/bin/r
# Title     : value 0 free
# Objective : graphic plots
# Created by: denis
# Created on: 12/08/2021

# Although generally throughout this chapter we have assumed that vectors
# and matrices are real, in eigenanalysis, even if A is real, it may be the case
# that c and v are complex. Therefore, in this section, we must be careful about
# the nature of the eigenpairs, even though we will continue to assume the basic
# matrices are real.
real <- c(v = 2.3, x = 4.2, z = 8.2)
x <- rnorm(50)
real + length(x)

length(diag(4))  # = 16 (4 x 4)
length(options())  # 12 or more
length(y ~ x1 + x2 + x3)  # 3
length(expression(x, {y <- x^2; y+2}, x^y))  # 3

## from example(warpbreaks)
require(stats)

fm1 <- lm(breaks ~ wool * tension, data = warpbreaks)
length(fm1$call)      # 3, lm() and two arguments.
length(formula(fm1))  # 3, ~ lhs rhs

form <- y ~ a + b + c
as.character(form)  ## length 3
deparse(form)       ## like the input

a0 <- 11/999          # has a repeating decimal representation
(a1 <- as.character(a0))
format(a0, digits = 16) # shows one more digit
a2 <- as.numeric(a1)
a2 - a0               # normally around -1e-17
as.character(a2)      # normally different from a1
print(c(a0, a2), digits = 16)

v <- c(
  c("foo", "bar", "foobar"),
  style = list(vec_sep = " & ", vec_last = " & ")
)


# custom truncation
x <- c(names(mtcars), list(vec_trunc = 3))

# SQLite only needs a path to the database. (Here, ":memory:" is a special
# path that creates an in-memory database.) Other database drivers
# will require more details (like user, password, host, port, etc.)
con <- c(RSQLite::SQLite(), ":memory:")
con


# Bad, for subtle reasons:
# This code fails when RSQLite isn't loaded yet,
# because dbConnect() doesn't know yet about RSQLite.
dbList <- c(con <- c(RSQLite::SQLite(), ":memory:"))

# Before proceeding to consider properties of eigenvalues and eigenvectors,
# we should note how remarkable the relationship Av = cv is: the eﬀect of a
# matrix multiplication of an eigenvector is the same as a scalar multiplication
# of the eigenvector. The eigenvector is an invariant of the transformation in
# the sense that its direction does not change. This would seem to indicate that
# the eigenvalue and eigenvector depend on some kind of deep properties of the
# matrix, and indeed this is the case, as we will see. Of course, the ﬁrst question
# is whether such special vectors and scalars exist. The answer is yes, but before
# considering that and other more complicated issues, we will state some simple
# properties of any scalar and vector that satisfy Av = cv and introduce some
# additional terminology.
cv <- 2.1
Av <- cv
Av / 2

# Left Eigenvectors
# In the following, when we speak of an eigenvector or eigenpair without qualiﬁ-
# cation, we will mean the objects deﬁned by equation (3.171). There is another
# type of eigenvector for A, however, a left eigenvector, deﬁned as a nonzero w
# in
is.matrix(3.171)

# For emphasis, we sometimes refer to the eigenvector of equation (3.171), Av =
# cv, as a right eigenvector.
n <- 1
print.eigen(n, 3.171)
flush <- flush.console()
cv <- runif(n, min = 0, max = 1)

# We see from the deﬁnition of a left eigenvector, that if a matrix is sym-
# metric, each left eigenvector is an eigenvector (a right eigenvector).
AI <- nrow(n)

# If v is an eigenvector of A and w is a left eigenvector of A with a diﬀerent
# associated eigenvalue, then v and w are orthogonal; that is, if Av = c 1 v,
# w T A = c 2 w T , and c 1 = c 2 , then w T v = 0. We see this by multiplying both
# sides of w T A = c 2 w T by v to get w T Av = c 2 w T v and multiplying both sides
# of Av = c 1 v by w T to get w T Av = c 1 w T v. Hence, we have c 1 w T v = c 2 w T v,
# and because c 1 = c 2 , we have w T v = 0.
child <- .Machine
