# de_identify_data.R
# file to extract a shareable dataset from the raw survey data pull
library(tidyverse)
library(readxl)

appr_survey_list_raw <- 
  read_excel(
    path = here("data/raw/Appr Survey List 1920-2122YTD.xlsx"),
    sheet = "Appr Survey List 1920-2122YTD"
  )

appr_survey_list_output <- 
  appr_survey_list_raw %>%
  select(
    `Fiscal Year`,
    STATUS_DATE,
    Region,
    SECTOR,
    STATUS,
    
  )
appr_survey_list_output %>%
  write_csv( file = here::here("data/processed/appr_survey_list.csv") )
