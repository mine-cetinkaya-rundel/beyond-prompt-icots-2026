# load packages ----

library(tidyverse)
library(janitor)

# pac_raw ----

files <- list.files("data", full.names = TRUE)
pac_raw <- read_csv(files, id = "file")

# pac ----

pac <- pac_raw |>
  clean_names() |>
  mutate(
    year = as.integer(str_extract(str_extract(file, "\\d{4}\\.csv$"), "\\d{4}"))
  ) |>
  separate_wider_delim(
    country_of_origin_parent_company,
    delim = "/",
    names = c("country_of_origin", "parent_company"),
    too_many = "merge"
  ) |>
  mutate(across(c(total, dems, repubs), parse_number)) |>
  rename(pac_name = pac_name_affiliate) |>
  select(year, pac_name, country_of_origin, parent_company, dems, repubs, total)

# parens ----

pac_raw |> filter(`PAC Name (Affiliate)` == "BP (BP)")
pac |> filter(pac_name == "BP (BP)")

# write out ----

write_csv(pac_raw, "talk/pac-raw.csv")
write_csv(pac, "talk/pac.csv")
