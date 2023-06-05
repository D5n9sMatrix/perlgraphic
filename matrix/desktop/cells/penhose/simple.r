#!/usr/bin/r
# Title     : simple
# Objective : graphic plots
# Created by: denis
# Created on: 12/08/2021

# One further property we see by simple multiplication is that if A and B
# are orthogonal, then A ⊗ B is orthogonal.
A <- sort(3.167, decreasing = FALSE)
B <- sort.list(3.167, partial = NULL, na.last = TRUE, decreasing = FALSE)
C <- sort.int(3.167)

# The deﬁnition of orthogonality is sometimes made more restrictive to re-
# quire that the matrix be square.
QR.py <- sqrt(Ax)

# Unless stated otherwise, I use the term “orthogonal matrix” to refer to a
# matrix whose columns are orthonormal; that is, for which Q T Q = I.
QTQ.I <- install.packages("MatrixModels")

# Unless stated otherwise, I use the term “orthogonal matrix” to refer to a
# matrix whose columns are orthonormal; that is, for which Q T Q = I.
QTQ.IR <- start(m10)
QTQ.R <- callr::default_repos()
QTQ.CI <- cellranger::is_A1(m10)

# The Orthogonal Group
# The set of n×m orthogonal matrices for which n ≥ m is called an (n, m) Stiefel
# manifold, and an (n, n) Stiefel manifold together with Cayley multiplication
# is a group, sometimes called the orthogonal group and denoted as O(n). The
# orthogonal group O(n) is a subgroup of the general linear group GL(n), deﬁned
# on page 90. The orthogonal group is useful in multivariate analysis because of
# the invariance of the so-called Haar measure over this group (see Section 4.5.1).
n > m10
O <- n - 0
page(90)

# Because the Euclidean norm of any column of an orthogonal matrix is 1,
# no element in the matrix can be greater than 1 in absolute value. We therefore
# have an analogue of the Bolzano-Weierstrass theorem for sequences of orthog-
# onal matrices. The standard Bolzano-Weierstrass theorem for real numbers
# states that if a sequence a i is bounded, then there exists a subsequence a i j
# that converges. (See any text on real analysis.) From this, we conclude that
# if Q 1 , Q 2 , . . . is a sequence of n × n orthogonal matrices, then there exists a
# subsequence Q i 1 , Q i 2 , . . ., such that
Q1 <- subset(n * m10)
Q2 <- subset(n * n * m10)

# where Q is some ﬁxed matrix. The limiting matrix Q must also be orthogonal
# T because Q T i j Q i j = I, and so, taking limits, we have Q Q = I. The set of n × n
# orthogonal matrices is therefore compact.
QTQ.I + Q1 * Q2
QQ <- QTQ.I + runif(n, min = 0, max = 1)

# Conjugate Vectors
# Instead of deﬁning orthogonality of vectors in terms of dot products as in
# Section 2.1.8, we could deﬁne it more generally in terms of a bilinear form as
# in Section 3.2.8. If the bilinear form x T Ay = 0, we say x and y are orthogonal
# with respect to the matrix A. We also often use a diﬀerent term and say
# that the vectors are conjugate with respect to A, as in equation (3.65). The
# usual deﬁnition of orthogonality in terms of a dot product is equivalent to the
# deﬁnition in terms of a bilinear form in the identity matrix.
XT <- nrow(n - 1)
AY <- ncol(n - 1)
x <- A + eq + c(XT, AY, eq = 3.65)
y <- A + eq + c(XT, AY, eq = 3.65)

# Likewise, but less often, orthogonality of matrices is generalized to conju-
# gacy of two matrices with respect to a third matrix: Q T AQ = I.
QTQ.AQ <- sys.calls()

# 3.8 Eigenanalysis; Canonical Factorizations
# Multiplication of a given vector by a square matrix may result in a scalar
# multiple of the vector. Stating this more formally, and giving names to such
# a special vector and scalar, if A is an n × n (square) matrix, v is a vector not
# equal to 0, and c is a scalar such that
eq <- n * n + sqrt(n)
eq - 2
Av <- eq + c(cv = -2)

# 3 Basic Properties of Matrices
# we say v is an eigenvector of the matrix A, and c is an eigenvalue of the
# matrix A. We refer to the pair c and v as an associated eigenvector and
# eigenvalue or as an eigenpair. While we restrict an eigenvector to be nonzero
# (or else we would have 0 as an eigenvector associated with any number being
# an eigenvalue), an eigenvalue can be 0; in that case, of course, the matrix
# must be singular. (Some authors restrict the deﬁnition of an eigenvalue to
# real values that satisfy (3.171), and there is an important class of matrices
# for which it is known that all eigenvalues are real. In this book, we do not
# want to restrict ourselves to that class; hence, we do not require c or v in
# equation (3.171) to be real.)
eq <- print.eigen(x, c(A = 3.171, B = 3.171, C = 3.171))

# We use the term “eigenanalysis” or “eigenproblem” to refer to the gen-
# eral theory, applications, or computations related to either eigenvectors or
# eigenvalues.
eigvalues <- data.class(eq)
eigvalues.new <- new(class(eq))
eigvalues.type <- typeof(eq)
eigvalues.type.predict <- type.convert(eq)
eigvalues.type.residuals <- defaultPrototype()
eigvalues.se.fit <- isTRUE(eq)

# There are various other terms used for eigenvalues and eigenvectors. An
# eigenvalue is also called a characteristic value (that is why I use a “c” to
# represent an eigenvalue), a latent root, or a proper value, and similar synonyms
# exist for an eigenvector. An eigenvalue is also sometimes called a singular
# value, but the latter term has a diﬀerent meaning that we will use in this
# book (see page 127; the absolute value of an eigenvalue is a singular value,
# and singular values are also deﬁned for nonsquare matrices).
library(bench)
library(cubature)

harness <- function(which = NULL,
                    f, fv, lowerLimit, upperLimit, tol = 1e-3, times = 20, ...) {

    fns <- c(hc = "Non-vectorized Hcubature",
             hc.v = "Vectorized Hcubature",
             pc = "Non-vectorized Pcubature",
             pc.v = "Vectorized Pcubature",
             cc = "Non-vectorized cubature::cuhre",
             cc_v = "Vectorized cubature::cuhre")
    cc <- function() cubature::cuhre(f = f,
                                     lowerLimit = lowerLimit, upperLimit = upperLimit,
                                     relTol = tol,
                                     ...)
    cc_v <- function() cubature::cuhre(f = fv,
                                       lowerLimit = lowerLimit, upperLimit = upperLimit,
                                       relTol = tol,
                                       nVec = 1024L,
                                       ...)

    hc <- function() cubature::hcubature(f = f,
                                         lowerLimit = lowerLimit,
                                         upperLimit = upperLimit,
                                         tol = tol,
                                         ...)

    hc.v <- function() cubature::hcubature(f = fv,
                                           lowerLimit = lowerLimit,
                                           upperLimit = upperLimit,
                                           tol = tol,
                                           vectorInterface = TRUE,
                                           ...)

    pc <- function() cubature::pcubature(f = f,
                                     lowerLimit = lowerLimit,
                                     upperLimit = upperLimit,
                                     tol = tol,
                                     ...)

    pc.v <- function() cubature::pcubature(f = fv,
                                           lowerLimit = lowerLimit,
                                           upperLimit = upperLimit,
                                           tol = tol,
                                           vectorInterface = TRUE,
                                           ...)

    ndim = length(lowerLimit)

    if (is.null(which)) {
        fnIndices <- seq_along(fns)
    } else {
        fnIndices <- na.omit(match(which, names(fns)))
    }
    fnList <- lapply(names(fns)[fnIndices], function(x) call(x))

    argList <- c(fnList, times = times, progress = FALSE)
    result <- do.call(benchr::benchmark, args = argList)
    d <- summary(result)[seq_along(fnIndices), ]
    d$expr <- fns[fnIndices]
    d
}

func <- function(x) sin(x[1]) * cos(x[2]) * exp(x[3])
func.v <- function(x) {
    matrix(apply(x, 2, function(z) sin(z[1]) * cos(z[2]) * exp(z[3])), ncol = ncol(x))
}

d <- c(f = func, fv = func.v,
             lowerLimit = rep(0, 3),
             upperLimit = rep(1, 3),
             tol = 1e-5,
             times = 100)

