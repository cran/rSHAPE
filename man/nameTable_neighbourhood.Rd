% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sourceSHAPE.R
\name{nameTable_neighbourhood}
\alias{nameTable_neighbourhood}
\title{This is a standardising function which allows SHAPE to programatiically name tables for the neighbourhood record OR split
a named table and extract the embedded information from its naming.}
\usage{
nameTable_neighbourhood(func_Index, funcSplit = FALSE,
  func_sepString = getOption("shape_sepString"))
}
\arguments{
\item{func_Index}{Integer value(s) for the unique genotype ID whose neighbourhood which will be recorded by the named table}

\item{funcSplit}{A logical toggle to control if this function is splitting a named table or not.  So, FALSE (default)
means we're creating a table name whereas TRUE is splitting a named table into it's parts.}

\item{func_sepString}{This is a character string used to collapse vectors of characters.}
}
\value{
If funcSplit is TRUE, then a vector of table names is returned.  If FALSE, we split the table and return the
data detailing the genotype ID whose neighbourhood is being recorded on the named table.
}
\description{
This is a standardising function which allows SHAPE to programatiically name tables for the neighbourhood record OR split
a named table and extract the embedded information from its naming.
}
\examples{
# This creates a table name in a standard way, it can also split table names to extract info.
defineSHAPE()
nameTable_neighbourhood(2,FALSE)
nameTable_neighbourhood("Step_2",TRUE)

}
