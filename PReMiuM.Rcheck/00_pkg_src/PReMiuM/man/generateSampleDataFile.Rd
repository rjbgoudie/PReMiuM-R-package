\name{generateSampleDataFile}
\alias{generateSampleDataFile}
\title{Generate sample data files for profile regression}
\description{Generation of random sample datasets for profile regression.}
\usage{
generateSampleDataFile(clusterSummary)
}
\arguments{
\item{clusterSummary}{A vector of strings of the covariate names as by the column names in the data argument.}
}
\value{
The output of this function is a list with the following elements
\item{yModel}{The outcome model according to which the data has been generated.}
\item{xModel}{The covariate model according to which the data has been generated.}
\item{inputData}{The data.frame that contains the data.}
\item{covNames}{The names of the covariates.}
\item{fixedEffectNames}{The names of the fixed effects.}

}
\section{Authors}{
David Hastie, Department of Epidemiology and Biostatistics, Imperial College London, UK

Silvia Liverani, Department of Epidemiology and Biostatistics, Imperial College London and MRC Biostatistics Unit, Cambridge, UK

Maintainer: Silvia Liverani <liveranis@gmail.com>
}
\references{

Liverani, S., Hastie, D. I. and Richardson, S. (2013) PReMiuM: An R package for Bayesian profile regression. \emph{Submitted}.

}
\examples{
# generation of data for clustering

generateDataList <- clusSummaryBernoulliDiscrete()
inputs <- generateSampleDataFile(generateDataList)
profRegr(yModel=inputs$yModel, xModel=inputs$xModel, nSweeps=100, 
    nBurn=100, data=inputs$inputData, output="output", 
    covNames=inputs$covNames)


}
\keyword{simulation}
