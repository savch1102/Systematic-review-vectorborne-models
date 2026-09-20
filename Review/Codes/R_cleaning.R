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

review_clean = review_clean %>% 
  mutate(across(6:ncol(review_clean), str_to_sentence))

## Tables ----

table(review_clean$stochasticity)
table(review_clean$model_1)
table(review_clean$behavior_1)
table(review_clean$disease)

colors_set1 = c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3")

theme_panel = theme_bw(base_size = 11) +
  theme(
    plot.title = element_text(face = "bold", size = 11, hjust = 0),
    plot.title.position = "plot",
    axis.text.x = element_text(angle = 45, hjust = 1, vjust = 1, color = "black"),
    axis.text.y = element_text(color = "black"),
    axis.title = element_text(face = "bold"),
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    plot.margin = margin(t = 5, r = 8, b = 5, l = 8)
  )

p1 = ggplot(review_clean, aes(x = stochasticity)) +
  geom_bar(fill = colors_set1[1], color = "black", width = 0.7, alpha = 0.85) +
  labs(title = "A)", x = "Stochasticity", y = "Frequency") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1))) +
  theme_panel

p2 = ggplot(review_clean, aes(x = model_1)) +
  geom_bar(fill = colors_set1[2], color = "black", width = 0.7, alpha = 0.85) +
  labs(title = "B)", x = "Model 1", y = "Frequency") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1))) +
  theme_panel

p3 = ggplot(review_clean, aes(x = disease)) +
  geom_bar(fill = colors_set1[3], color = "black", width = 0.7, alpha = 0.85) +
  labs(title = "C)", x = "Disease", y = "Frequency") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1))) +
  theme_panel

p4 = ggplot(review_clean, aes(x = behavior_1)) +
  geom_bar(fill = colors_set1[4], color = "black", width = 0.7, alpha = 0.85) +
  labs(title = "D)", x = "Behavior 1", y = "Frequency") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1))) +
  theme_panel

final_panel = plot_grid(
  p1, p2, p3, p4,
  ncol = 2,
  align = "hv",
  axis = "tblr"
)
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
