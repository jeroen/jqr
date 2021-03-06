% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jqr.R
\name{jq}
\alias{jq}
\alias{jq.jqr}
\alias{jq.character}
\title{Execute a query with jq}
\usage{
jq(x, ...)

\method{jq}{jqr}(x, ...)

\method{jq}{character}(x, ..., flags = jq_flags())
}
\arguments{
\item{x}{\code{json} object or character string with json data.}

\item{...}{character specification of jq query. Each element in code{...}
will be combined with " | ", which is convenient for long queries.}

\item{flags}{See \code{\link{jq_flags}}}
}
\description{
\code{jq} is meant to work with the high level interface in this package. \code{jq}
also provides access to the low level interface in which you can use jq query strings just
as you would on the command line. Output gets class of json, and pretty prints to
the console for easier viewing. \code{jqr} doesn't do pretty printing.
}
\examples{
'{"a": 7}' \%>\%  do(.a + 1)
'[8,3,null,6]' \%>\% sortj

x <- '[{"message": "hello", "name": "jenn"}, {"message": "world", "name": "beth"}]'
jq(index(x))

jq('{"a": 7, "b": 4}', 'keys')
jq('[8,3,null,6]', 'sort')
}
\seealso{
\code{\link{peek}}
}
