#!/usr/bin/r
# Title     : orthgonal
# Objective : graphic plots
# Created by: denis
# Created on: 12/08/2021

# is a Moore-Penrose inverse of A. This expression for the Moore-Penrose inverse
# based on a full rank decomposition of A is not as useful as another expres-
# sion we will consider later, based on QR decomposition (equation (5.38) on
# page 190).
n <- 1
x <- rnorm(n, mean = 0, sd = 1)
QR <- decompose(co2)
QR$figure
plot(QR)

## example taken from Kendall/Stuart
x <- c(A = -50, B = 175, C = 149, D = 214, E = 247, F = 237, G = 225, H = 329, I = 729, J = 809,
       L = 530, M = 489, N = 540, O = 457, P = 195, Q = 176, R = 337, S = 239, T = 128, U = 102, V = 232, X = 429, Z = 3,
       K = 98, W = 43, Y = -141, A = -77, B = -13, C = 125, D = 361, E = -45, F = 184)
x <- ts(x, start = c(1951, 1), end = c(1958, 4), frequency = 4)
QR <- decompose(x)
## seasonal figure: 6.25, 8.62, -8.84, -6.03
round(decompose(x)$figure / 10, 2)

# Uniqueness
# We can see that the Moore-Penrose inverse is unique by considering any matrix
# G that satisﬁes the properties 1 through 4 for A = 0. (The Moore-Penrose
# inverse of A = 0 (that is, A + = 0) is clearly unique, as there could be no other
# matrix satisfying property 2.) By applying the properties and using A + given
# above, we have the following sequence of equations:
A <- tools::.print.via.format(x)
R <- tools::Adobe_glyphs
refs <-
c(bibentry(bibtype = "manual",
    title = "R: A Language and Environment for Statistical Computing",
    author = person("R Core Team"),
    organization = "R Foundation for Statistical Computing",
    address = "Vienna, Austria",
    year = 2013,
    url = "https://www.R-project.org"),
  bibentry(bibtype = "article",
    author = c(person(c("George", "E.", "P."), "Box"),
               person(c("David",  "R."),      "Cox")),
    year = 1964,
    title = "An Analysis of Transformations",
    journal = "Journal of the Royal Statistical Society, Series B",
    volume = 26,
    pages = "211-252"))

D <- c("unsorted", sortKeys = function(refs) seq_along(refs),
    fmtPrefix = function(paper) paste0("[", paper$.index, "]"),
       .init = TRUE)
print(refs, .D = "unsorted")

# Other Properties
# If A is nonsingular, then obviously A + = A −1 , just as for any generalized
# inverse.
A + A - 1

# Because A + is a generalized inverse, all of the properties for a generalized
# inverse A − discussed above hold; in particular, A + b is a solution to the linear
# system Ax = b (see equation (3.156)). In Section 6.7, we will show that this
# unique solution has a kind of optimality.
Ax <- c(A = 3.156, B = 3.156, C = 3.156)
B <- invisible(Ax)
y <- Ax
pmax.int(Ax)
pmin.int(Ax)

# If the inverses on the right-hand side of equation (3.165) are pseudoin-
# verses, then the result is the pseudoinverse of A.
## overdetermined system
A <- matrix(runif(12), 4)
b <- 1:4
qr.solve(A, b) # or solve(qr(A), b)
solve(qr(A, LAPACK = TRUE), b)
# this is a least-squares solution, cf. lm(b ~ 0 + A)

## underdetermined system
A <- matrix(runif(12), 3)
b <- 1:3
qr.solve(A, b)
solve(qr(A, LAPACK = TRUE), b)
# solutions will have one zero, not necessarily the same one
# The generalized inverse given in equation (3.166) is the same as the
# pseudoinverse given in equation (3.167).
eq <- rnorm(3.167)

# Pseudoinverses also have a few additional interesting properties not shared
# by generalized inverses; for example
diffinv(eq)

# 3.7 Orthogonality
# In Section 2.1.8, we deﬁned orthogonality and orthonormality of two or more
# vectors in terms of dot products. On page 75, in equation (3.81), we also
# deﬁned the orthogonal binary relationship between two matrices. Now we
eq + length(x)

# 3 Basic Properties of Matrices
# deﬁne the orthogonal unary property of a matrix. This is the more important
# property and is what is commonly meant when we speak of orthogonality of
# matrices. We use the orthonormality property of vectors, which is a binary
# relationship, to deﬁne orthogonality of a single matrix.
eq + length(x)
m10 <- as.matrix(eq)
