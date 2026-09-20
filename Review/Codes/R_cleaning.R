## Libraries ----

library(cleanepi)
library(rio)
library(tidyverse)

## Data ----

review = import("total_files_20260421.xlsx")

review = review %>%
  mutate(disease = case_when(
    str_detect(tolower(name), "dengue") ~ "dengue",
    str_detect(tolower(name), "malaria|plasmodium") ~ "malaria",
    str_detect(tolower(name), "zika") ~ "zika",
    str_detect(tolower(name), "chikungunya") ~ "chikungunya",
    str_detect(tolower(name), "yellow fever") ~ "yellow fever",
    str_detect(tolower(name), "trypanosomiasis|tsetse") ~ "trypanosomiasis",
    str_detect(tolower(name), "chagas|triatoma") ~ "chagas",
    str_detect(tolower(name), "monkeypox") ~ "monkeypox",
    str_detect(tolower(name), "arbovirus") ~ "arbovirus",
    TRUE ~ "vector-borne"
  ))


review = standardize_column_names(review) %>% 
  rename(year = year_1) %>% 
  select(!c("x19", "total_model", "total_behavior", "data", "data_detailed")) %>% 
  mutate(across(where(is.character), tolower))

review_clean = review %>% 
  distinct(doi, .keep_all = TRUE)

no = which(review_clean$behavior_1 %in% c("creo que no tiene", "sexual_behavior") |
           review_clean$disease == "monkeypox")

review_clean = review_clean[-no,]
review_clean = replace_missing_values(
  review_clean, 
  target_columns = colnames(review_clean)[4:ncol(review_clean)], 
  na_strings = "-"
)


## Tables ----

table(review_clean$stochasticity)
table(review_clean$model_1)
table(review_clean$behavior_1)
table(review_clean$disease)


## Initial cleaning ----

data1 = import("excel1.xlsx")
data2 = import("excel2.xlsx")

data1 = standardize_column_names(data1)
data2 = standardize_column_names(data2)

data1 = replace_missing_values(
  data1, 
  target_columns = colnames(data1)[4:ncol(data1)], 
  na_strings = "-"
)

data1 = data1 %>% 
  mutate(across(where(is.character), tolower))
data2 = data2 %>% 
  mutate(across(where(is.character), tolower))
