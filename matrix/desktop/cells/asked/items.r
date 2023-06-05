#!/usr/bin/r
# Title     : items
# Objective : graphic plots
# Created by: denis
# Created on: 12/08/2021

# 1. bv is an eigenvector of A, where b is any nonzero scalar.
# It is often desirable to scale an eigenvector v so that v T v = 1. Such a
# normalized eigenvector is also called a unit eigenvector.
# For a given eigenvector, there is always a particular eigenvalue associ-
# ated with it, but for a given eigenvalue there is a space of associated
# eigenvectors. (The space is a vector space if we consider the zero vec-
# tor to be a member.) It is therefore not appropriate to speak of “the”
# eigenvector associated with a given eigenvalue — although we do use this
# term occasionally. (We could interpret it as referring to the normalized
# eigenvector.) There is, however, another sense in which an eigenvalue
# does not determine a unique eigenvector, as we discuss below.

## Not run:  plot(unlist(alcoff), type = "l", frame.plot = TRUE,
axes <- c(FALSE, col = "blue", bty = "o",
     main = "Alcoholic offenders on NZ roads, aggregated over 2009",
     sub  = "Vertical lines at midnight (purple) and noon (orange)",
     xlab = "Day/hour", ylab = "Number of offenders")
plot(1, at = 1 + (0:6) * 24 + 12, labels = "orange")
axis <- c(1, at = 1 + (0:6) * 24 + 12, labels = "orange")

axis.by <- c(2, las = 1)
axis.run <-  c(3:4, labels = FALSE, tick = FALSE)
axis.manager <- abline(v = sort(1 + c((0:7) * 24, (0:6) * 24 + 12)), lty = "dashed",
       col = c("purple", "orange"))
## End(Not run)

# Goodmans RC models
## Not run:
fitgrc1 <- c(rank(axis.run))  # Rank-1 model
fitgrc2 <- c(rank(axis.run), Rank = 2, Corner = FALSE, Uncor = TRUE)
storage.mode(fitgrc1)
storage.mode(fitgrc2)
## End(Not run)
## Not run:  biplot(fitgrc2, scaleA = 2.3, Ccol = "blue", Acol = "orange",
Clabels <- c(as.character(1:23), xlim = c(-1.3, 2.3),
       ylim = c(-1.2, 1))
## End(Not run)
plot(Clabels)
id <- abline(Av, sort(fitgrc1|fitgrc2), (0:25))

# 2. bc is an eigenvalue of bA, where b is any nonzero scalar.
# 3. 1/c and v are an eigenpair of A −1 (if A is nonsingular).
# 4. 1/c and v are an eigenpair of A + if A (and hence A + ) is square and c
# is nonzero.
bc <- c(A = 1 - 1)
if (bc != 0){
    A / 1
}
sqrt(bc)

callr::default_repos()
duplicated(bc, incomparables = FALSE)

dialog <- c(A = rep(1:3, each=4), B = rep(1:4, each=3),
                  C = rep(1:2, 6), key = "A,B")
duplicated(dialog)
unique(dialog)

plot(dialog)

duplicated(dialog, by="B")
unique(dialog, by="B")

duplicated(dialog, by=c("A", "C"))
unique(dialog, by=c("A", "C"))

dialog.x <- c(a=c(2L,1L,2L), b=c(1L,2L,1L))   # no key
unique(dialog.x)                   # rows 1 and 2 (row 3 is a duplicate of row 1)
dialog.y <- c(a=c(3.142, 4.2, 4.2, 3.142, 1.223, 1.223), b=rep(1,6))
unique(dialog.y)                   # rows 1,2 and 5
plot.new()
plot(dialog.x)
plot(dialog.y)
dialog.p <- c(a=tan(pi*(1/4 + 1:10)), b=rep(1,10))   # example from ?all.equal
plot(dialog.p)
length(unique(dialog))         # 10 strictly unique floating point values
all.equal(dialog,rep(1,10))    # TRUE, all within tolerance of 1.0
identical(unique(dialog),dialog[1])  # TRUE, stable within tolerance
identical(unique(dialog),dialog[10]) # FALSE

# fromLast=TRUE
dialog.z <- c(A = rep(1:3, each=4), B = rep(1:4, each=3),
                 C = rep(1:2, 6), key = "A,B")
duplicated(dialog, by="B", fromLast=TRUE)
unique(dialog, by="B", fromLast=TRUE)
plot(dialog.z)
# anyDuplicated
anyDuplicated(dialog, by=c("A", "B"))    # 3L
any(duplicated(dialog, by=c("A", "B")))  # TRUE

# uniqueN, unique rows on key columns
N <- c(dialog, by = (dialog))
# uniqueN, unique rows on all columns
all.n <- c(dialog)
