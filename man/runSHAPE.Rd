% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sourceSHAPE.R
\name{runSHAPE}
\alias{runSHAPE}
\title{This is the actual running of shape, it will initialise objects and values which are calculated from
the parameters that have been set - see the options with the suffix 'shape_'.  It will establish the
database output files and other initial conditions and then perform replicate simulations as appropriately defined.
In essense this is the master wrapper function for all other functions. If you want to test/see SHAPE's default run
then simply call this function after loading the library you'll see an experiment built under your root directory.
It at least requires that defineSHAPE have been run, else this is going to fail.}
\usage{
runSHAPE(loop_thisRep = getOption("shape_thisRep"),
  workingReplicates = seq(getOption("shape_thisRep"),
  getOption("shape_maxReplicates"), by = 1),
  tmpEnvir_recycleParms = new.env())
}
\arguments{
\item{loop_thisRep}{This is the first replicate value to be simulated in this run, it is standard 1 but can be changed
to help with recovery in the middle of a series of replicates.}

\item{workingReplicates}{This is the maximum replicate number to to simulated in this call.  It is meaningfully different
from the number of replicates to be run only when loop_thisRep != 1.}

\item{tmpEnvir_recycleParms}{This is an environment used to temporarily store loaded RData file objects so that parameters
from previous runs, that were stored in RData, can be read back in as required.}
}
\description{
This is the actual running of shape, it will initialise objects and values which are calculated from
the parameters that have been set - see the options with the suffix 'shape_'.  It will establish the
database output files and other initial conditions and then perform replicate simulations as appropriately defined.
In essense this is the master wrapper function for all other functions. If you want to test/see SHAPE's default run
then simply call this function after loading the library you'll see an experiment built under your root directory.
It at least requires that defineSHAPE have been run, else this is going to fail.
}
\examples{
# First step is to set parameters for the run, this could be done manually but I
# recommend using the defineSHAPE function which has a default setting for all
# possible parameters and will calculate the value of derived/conditional parameters.
defineSHAPE()
# Now you can run the simulations, you should get printout to your stdout.
\donttest{ runSHAPE() }
# Now go and check the SHAPE working directory, which can be found at:
getOption("shape_workDir")
list.files(getOption("shape_workDir"))
# You'll have an experiment folder as well as post-analysis folder
# created each with appropriate output!
}
