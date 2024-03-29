% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sourceSHAPE.R
\name{set_siteByState_fitnessMat}
\alias{set_siteByState_fitnessMat}
\title{This function is designed to establish an initial object which maps the fitness values
of genome positions based on the state of that site.  At present, this has no meaning
if the model of simulation is no NK, Additive, or Fixed.  Where the first is Kauffman's NK
model and form of calculations, Additive is what that word would make you think for fitness
effects of mutations at sites, and Fixed is when user supplied a defined fitness matrix that
describes the entire fitness landscape.  NOTE: This function should likely be called without
supplying any non-default arguments as it will use the shape_ options defined.}
\usage{
set_siteByState_fitnessMat(func_simModel = getOption("shape_simModel"),
  func_const_fixedFrame = getOption("shape_const_fixedFrame"),
  func_const_siteStates = getOption("shape_const_siteStates"))
}
\arguments{
\item{func_simModel}{This is the fitness landscape model being simulated}

\item{func_const_fixedFrame}{This is a contextual object that described constant fitness effects}

\item{func_const_siteStates}{These are the posibble states for genome sites, at present this
ought to be "0" and/or "1"}
}
\value{
A contextually meaningful matrix describing fitness effects of mutations/genotypes,
where based on the context NULL may be returned.
}
\description{
This function is designed to establish an initial object which maps the fitness values
of genome positions based on the state of that site.  At present, this has no meaning
if the model of simulation is no NK, Additive, or Fixed.  Where the first is Kauffman's NK
model and form of calculations, Additive is what that word would make you think for fitness
effects of mutations at sites, and Fixed is when user supplied a defined fitness matrix that
describes the entire fitness landscape.  NOTE: This function should likely be called without
supplying any non-default arguments as it will use the shape_ options defined.
}
\section{Note}{

There is no example as this cannot work outisde of a runSHAPE call, it requires data produced by the simulation experiment.
}

