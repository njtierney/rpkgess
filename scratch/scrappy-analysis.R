# scrappy analysis

setwd("/Users/nick/github/njtierney/r-pkg-essentials/scratch/")

read.csv

# some of the data cleaning tasks
# convert -99 to NA
# convert various states to standardised upper case
# various renaming of columns?
# clean up dashes
# mutate(age = str_replace(age, "–", "-")) %>%
# clean up magic commas and apostrophes
mutate(
  state = case_when(
    lga == "Unincorp. Other Territories" ~ "OT",
    TRUE ~ as.character(state)
  )
) %>%
# clean up age data that has something like:

age = case_when(
  age == "15 - 19" ~ str_remove_all(age, " "),
  age == "20 - 24" ~ str_remove_all(age, " "),
  age == "25 - 34" ~ str_remove_all(age, " "),
  age == "35 - 44" ~ str_remove_all(age, " "),
  age == "45 - 54" ~ str_remove_all(age, " "),
  age == "55 - 64" ~ str_remove_all(age, " "),
  age == "65 - 74" ~ str_remove_all(age, " "),
  age == "75 - 84" ~ str_remove_all(age, " "),
  age == "85 and over" ~ "85+"
  # age == "Total" ~ "total"
),
age = factor(
  age,
  levels = c(
    "15-19",
    "20-24",
    "25-34",
    "35-44",
    "45-54",
    "55-64",
    "65-74",
    "75-84",
    "85+"
    # "total"
  )
)
)
