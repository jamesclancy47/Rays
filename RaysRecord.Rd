\name{RaysRecord}
\alias{RaysRecord}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  GoRays
}
\description{
%% Displays Bird Questioning the rays record then gives Rays current record and division standing
}
\usage{
RaysRecord(GoRays)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{GoRays}{
%%     ~~Describe \code{GoRays} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  James Clancy
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (GoRays)
{
    say("What Is The Tampa Bay Rays current record and division standing",
        by = "egret", what_color = "blue", by_color = c("green",
            "blue", "green"))
    rays <- baseballr::standings_on_date_bref(Sys.Date(), "AL East") \%>\%
        .[[1]] \%>\% mutate(Rank = row_number()) \%>\% filter(Tm ==
        "TBR") \%>\% select(W, L, Rank)
    rays
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
