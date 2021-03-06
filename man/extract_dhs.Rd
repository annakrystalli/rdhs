% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ui.R
\name{extract_dhs}
\alias{extract_dhs}
\title{Extract Data}
\usage{
extract_dhs(questions, add_geo = FALSE)
}
\arguments{
\item{questions}{Questions to be queried, in the format from
\code{\link{search_variables}} or \code{\link{search_variable_labels}}}

\item{add_geo}{Add geographic information to the extract. Defaut = `TRUE`}
}
\value{
A \code{list} of `data.frames` for each survey data extracted.
}
\description{
Extracts data from your downloaded datasets according to a data.frame of
requested survey variables or survey definitions
}
\details{
Function to extract datasets using a set of survey questions as
  taken from the output from \code{\link{search_variables}}
  or \code{\link{search_variable_labels}}
}
\examples{

# get the model datasets included with the package
model_datasets <- model_datasets

# download one of them
g <- get_datasets(dataset_filenames = model_datasets$FileName[1])

# create some terms of data me may want to extrac
st <- search_variable_labels(names(g), "bed net")

# and now extract it
ex <- extract_dhs(st)
}
