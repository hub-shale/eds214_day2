# debugging practice
library(stringr)
library(testthat)

USDA_guess = function(genus, species) {
  init_code = str_sub(genus, start = 1, end = 2)
  end_code = str_sub(species, start = 1, end = 2)
  plant_code = toupper(paste0(init_code, end_code))
  print(plant_code)
  print("Disclaimer: This function does not calculate numbers for USDA plan codes. Please visit https://plants.sc.egov.usda.gov/home to verify this result.")
}

# test_guess = USDA_guess("Eriogonum", "Inflatum")




percent_calc = function(value, pct) {
  testthat::expect_gte(pct, 0)
  percent = value * (pct / 100)
  return(percent)
#  result <- dplyr::case_when(
#    metric == "percent" ~ value * (pct / 100),
#    metric == "permil" ~ value * (pct / 1000)
#  )   A way to also calculate per-mil values if desired - needs additional argument "metric" to work
  
}

