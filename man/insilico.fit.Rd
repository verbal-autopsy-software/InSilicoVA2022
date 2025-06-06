% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/insilico_core.r
\name{insilico.fit}
\alias{insilico.fit}
\title{Implement InSilicoVA methods with more flexible customization}
\usage{
insilico.fit(
  data,
  data.type = c("WHO2012", "WHO2016", "WHO2022")[3],
  sci = NULL,
  isNumeric = FALSE,
  updateCondProb = TRUE,
  keepProbbase.level = TRUE,
  CondProb = NULL,
  CondProbNum = NULL,
  datacheck = TRUE,
  datacheck.missing = TRUE,
  warning.write = FALSE,
  directory = NULL,
  external.sep = TRUE,
  Nsim = 4000,
  thin = 10,
  burnin = 2000,
  auto.length = TRUE,
  conv.csmf = 0.02,
  jump.scale = 0.1,
  levels.prior = NULL,
  levels.strength = 1,
  trunc.min = 1e-04,
  trunc.max = 0.9999,
  subpop = NULL,
  java_option = "-Xmx1g",
  seed = 1,
  phy.code = NULL,
  phy.cat = NULL,
  phy.unknown = NULL,
  phy.external = NULL,
  phy.debias = NULL,
  exclude.impossible.cause = c("subset2", "subset", "all", "InterVA", "none")[1],
  impossible.combination = NULL,
  no.is.missing = FALSE,
  customization.dev = FALSE,
  Probbase_by_symp.dev = FALSE,
  probbase.dev = NULL,
  table.dev = NULL,
  table.num.dev = NULL,
  gstable.dev = NULL,
  nlevel.dev = NULL,
  indiv.CI = NULL,
  groupcode = FALSE,
  known_labels = NULL,
  ...
)
}
\arguments{
\item{data}{see \code{\link{insilico}}}

\item{data.type}{see \code{\link{insilico}}}

\item{sci}{see \code{\link{insilico}}}

\item{isNumeric}{see \code{\link{insilico}}}

\item{updateCondProb}{see \code{\link{insilico}}}

\item{keepProbbase.level}{see \code{\link{insilico}}}

\item{CondProb}{see \code{\link{insilico}}}

\item{CondProbNum}{see \code{\link{insilico}}}

\item{datacheck}{see \code{\link{insilico}}}

\item{datacheck.missing}{see \code{\link{insilico}}}

\item{warning.write}{see \code{\link{insilico}}}

\item{directory}{see \code{\link{insilico}}}

\item{external.sep}{see \code{\link{insilico}}}

\item{Nsim}{see \code{\link{insilico}}}

\item{thin}{see \code{\link{insilico}}}

\item{burnin}{see \code{\link{insilico}}}

\item{auto.length}{see \code{\link{insilico}}}

\item{conv.csmf}{see \code{\link{insilico}}}

\item{jump.scale}{see \code{\link{insilico}}}

\item{levels.prior}{see \code{\link{insilico}}}

\item{levels.strength}{see \code{\link{insilico}}}

\item{trunc.min}{see \code{\link{insilico}}}

\item{trunc.max}{see \code{\link{insilico}}}

\item{subpop}{see \code{\link{insilico}}}

\item{java_option}{see \code{\link{insilico}}}

\item{seed}{see \code{\link{insilico}}}

\item{phy.code}{see \code{\link{insilico}}}

\item{phy.cat}{see \code{\link{insilico}}}

\item{phy.unknown}{see \code{\link{insilico}}}

\item{phy.external}{see \code{\link{insilico}}}

\item{phy.debias}{see \code{\link{insilico}}}

\item{exclude.impossible.cause}{see \code{\link{insilico}}}

\item{impossible.combination}{see \code{\link{insilico.train}}}

\item{no.is.missing}{see \code{\link{insilico}}}

\item{customization.dev}{Logical indicator for customized variables}

\item{Probbase_by_symp.dev}{Not tested yet.}

\item{probbase.dev}{The customized conditional probabilities of symptoms given causes, which could be in a different format than InterVA default, but it should consist of \code{nlevel.dev} levels rather than numerical values.}

\item{table.dev}{The table of level names in \code{probbase.dev}. Default to be NULL}

\item{table.num.dev}{The corresponding prior numerical values for each level in \code{probbase.dev}, in the same order as \code{table.dev}. Default to be NULL}

\item{gstable.dev}{Table of gold standard causes for each death. Default to be NULL}

\item{nlevel.dev}{number of levels in \code{probbase.dev}. Default to be NULL}

\item{indiv.CI}{credible interval for individual probabilities}

\item{groupcode}{logical indicator of including the group code in the output causes}

\item{known_labels}{a data frame with two columns: the first column is the death ID and the second column is the known cause of death (need to match the cause list for the given data format). When it is provided for some causes, they will be used as partial labels in the input data. Any unmatched observations (unmatched by either ID or cause) will not contribute to partial labels. Default to be NULL}

\item{...}{unused arguments}
}
\value{
a insilico fit object, see see \code{\link{insilico}} for more detail.
}
\description{
This function implements InSilicoVA model. This is the lower level core function of InSilicoVA with more flexibility in customized input. For more detail of model specification, see the paper on \url{https://arxiv.org/abs/1411.3042} and the default function \code{\link{insilico}}.
}
\references{
Tyler H. McCormick, Zehang R. Li, Clara Calvert, Amelia C.
Crampin, Kathleen Kahn and Samuel J. Clark(2014) \emph{Probabilistic
cause-of-death assignment using verbal autopsies},
\url{https://arxiv.org/abs/1411.3042} \cr \emph{Working paper no. 147, Center
for Statistics and the Social Sciences, University of Washington}
}
\seealso{
\code{\link{plot.insilico}}, \code{\link{summary.insilico}}
}
\author{
Zehang Li, Tyler McCormick, Sam Clark

Maintainer: Zehang Li <lizehang@uw.edu>
}
\keyword{InSilicoVA}
