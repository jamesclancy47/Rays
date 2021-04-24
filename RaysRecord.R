devtools::install_github("BillPetti/baseballr", ref = "development_branch")
library(devtools)
library(roxygen2)
library(rvest)
library(dplyr)
library(rvest)
library(cowsay)
library(jsonlite)
library(multicolor)






#' RaysRecord
#'
#' Access Baseball-Reference.com data to receive Rays Record,
#' and division standing
#' @param W, L, Rank
#' @return RaysRecord
#' @examples
#' RaysRecord()
#'
#'
#' @export
#' @seealso





RaysRecord <- function(GoRays){

  say("What Is The Tampa Bay Rays current record and division standing",   by = "egret",
      what_color = "blue",
      by_color = c("green", "blue", "green"))
  rays <- baseballr::standings_on_date_bref(Sys.Date(), "AL East") %>%
    .[[1]] %>%
    mutate(Rank = row_number()) %>%
    filter(Tm == 'TBR') %>%
    select(W, L, Rank)
  rays

}
RaysRecord()

