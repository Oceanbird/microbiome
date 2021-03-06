% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diversities.R
\name{diversity}
\alias{diversity}
\title{Diversity Index}
\usage{
diversity(x, index = "all", zeroes = TRUE)
}
\arguments{
\item{x}{A species abundance vector, or matrix (taxa/features x samples)
with the absolute count data (no relative abundances), or
\code{\link{phyloseq-class}} object}

\item{index}{Diversity index. See details for options.}

\item{zeroes}{Include zero counts in the diversity estimation.}
}
\value{
A vector of diversity indices
}
\description{
Various community diversity indices.
}
\details{
By default, returns all diversity indices.
The available diversity indices include the following:
\itemize{
\item{inverse_simpson }{Inverse  Simpson diversity:
$1/lambda$ where $lambda=sum(p^2)$ and $p$ are relative abundances.}
\item{gini_simpson }{Gini-Simpson diversity $1 - lambda$.
This is also called Gibbs–Martin, or Blau index in sociology,
psychology and management studies.}
\item{shannon }{Shannon diversity ie entropy}
\item{fisher }{Fisher alpha; as implemented in the \pkg{vegan} package}
\item{coverage }{Number of species needed to cover 50\% of the ecosystem.
For other quantiles, apply the function coverage directly.}
}
}
\examples{
data(dietswap)
d <- alpha(dietswap, 'shannon')
}
\references{
Beisel J-N. et al. A Comparative Analysis of Diversity Index Sensitivity.
Internal Rev. Hydrobiol. 88(1):3-15, 2003.
URL:
\url{https://portais.ufg.br/up/202/o/2003-comparative_evennes_index.pdf}

Bulla L. An  index of diversity and its associated diversity measure.
Oikos 70:167--171, 1994

Magurran AE, McGill BJ, eds (2011)
Biological Diversity: Frontiers in Measurement and Assessment
(Oxford Univ Press, Oxford), Vol 12.

Smith B and Wilson JB. A Consumer's Guide to Diversity Indices.
Oikos 76(1):70-82, 1996.
}
\seealso{
dominance, richness, evenness, rarity, alpha
}
\author{
Contact: Leo Lahti \email{microbiome-admin@googlegroups.com}
}
\keyword{utilities}
