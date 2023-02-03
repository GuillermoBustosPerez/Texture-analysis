library(tidyverse)
#### Load Sequential data from the three files and unite them ####
# GLCM of sequential data
GLCM.txt <- read.delim("12 Data Flints/GLCM.txt", sep = ",")

GLCM.txt <- GLCM.txt %>% filter(
  !grepl("#", X.)) %>% 
  mutate(Angular.Second.Moment = as.numeric(Angular.Second.Moment),
         Contrast = as.numeric(Contrast),
         Correlation = as.numeric(Correlation),
         Inverse.Difference.Moment = as.numeric(Inverse.Difference.Moment),
         Entropy = as.numeric(Entropy)
  ) %>% 
  rename(ID = X.) %>% 
  select(-c(X)) %>% 
  group_by(ID) %>% 
  summarise(
    ASM = mean(Angular.Second.Moment),
    CONT = mean(Contrast),
    CORR = mean(Correlation),
    IDM = mean(Inverse.Difference.Moment),
    ENT = mean(Entropy)
  ) 

# Roughness data
Roughness.Control <- read.delim("12 Data Flints/Roughness.txt", sep = ",") %>% 
  select(-c(X))

# Load descriptive data
Descriptive.Control <- read.delim("12 Data Flints/Descriptive.txt", sep = ",") %>% 
  select(-c(X))

# Put all data frames into list
df_list <- list(Descriptive.Control, Roughness.Control, GLCM.txt)

# Merge all data frames in list
Sequential.Data <- df_list %>% reduce(full_join, by = 'ID')
rm(df_list, Descriptive.Control, Roughness.Control, GLCM.txt)

#### From the file names extract data about times, positions, sample type, etc. ####
# Transform the data
Sequential.Data <- Sequential.Data %>% 
  mutate(
    Flake.ID = str_split(ID, " ", simplify = TRUE)[,1],
    Flake.Time = str_split(ID, " ", simplify = TRUE)[,2],
    Flake.Moment = 
      case_when(
        !str_detect(ID, 'eocortex') ~ str_sub(Flake.Time, 0, 2),
        str_detect(ID, 'eocortex') ~ 'Neocortex'), 
    Dorsal.Ventral = 
      case_when(
        !str_detect(ID, 'eocortex') ~ str_sub(Flake.Time, 4, 5),
        str_detect(ID, 'eocortex') ~ "01"),
    No.Photo = 
      case_when(
        !str_detect(ID, 'eocortex') ~ str_sub(Flake.Time, 7, 8),
        str_detect(ID, 'eocortex') ~ str_sub(ID, -7,-7)),
    Photo.Type = str_sub(ID, -6,-6),
    Flake.ID = str_split(ID, " ", simplify = TRUE)[,1],
    Flake.Number =
      case_when(
        str_detect(Flake.ID, 'HDisc') ~ str_split(Flake.ID, "_", simplify = TRUE)[,3],
        str_detect(Flake.ID, 'Hdisc') ~ str_split(Flake.ID, "_", simplify = TRUE)[,3],
        str_detect(Flake.ID, 'PAR') ~ str_split(Flake.ID, "_", simplify = TRUE)[,3],
        str_detect(Flake.ID, 'Par') ~ str_split(Flake.ID, "_", simplify = TRUE)[,3],
        str_detect(Flake.ID, 'RMS') ~ str_split(Flake.ID, "_", simplify = TRUE)[,2]),
    Flint.Type =
      case_when(
        str_detect(Flake.Number, 'R') ~ "Type_7",
        !str_detect(Flake.Number, 'R') & str_detect(Flake.ID, 'HDisc') | str_detect(Flake.ID, 'Hdisc') ~ "GeoSample" ,
        !str_detect(Flake.Number, 'R') & Flake.Number > 0 & Flake.Number < 22 ~ "Type_1",
        !str_detect(Flake.Number, 'R') & Flake.Number > 39 & Flake.Number < 61 ~ "Type_4",
        !str_detect(Flake.Number, 'R') & Flake.Number == 23 ~ "Type_2",
        !str_detect(Flake.Number, 'R') & Flake.Number > 60 & Flake.Number < 83 ~ "Type_5")) %>% 
  mutate(
    Flake.Time = case_when(
      Flake.Moment == "00" ~ "Fresh",
      Flake.Moment == "01" ~ "Ten.Minutes",
      Flake.Moment == "02" ~ "One.Hour",
      Flake.Moment == "03" ~ "Five.Hours",
      Flake.Moment == "04" ~ "Ten.Hours",
      Flake.Moment == "05" ~ "Ten.Hours",
      Flake.Moment == "06" ~ "Fifteen.Hours",
      Flake.Moment == "Neocortex" ~ "Neocortex"),
    Photo.Type = case_when(
      Photo.Type == "a" ~ "Sequential",
      Photo.Type == "b" ~ "Screened",
      Photo.Type == "c" ~ "Screened")) %>% 
  select(-c(Flake.Moment)) %>% 
  mutate(
    Flake.Time = factor(Flake.Time, 
                        levels = c(
                          "Fresh",
                          "Ten.Minutes",
                          "One.Hour",
                          "Five.Hours",
                          "Ten.Hours",
                          "Fifteen.Hours",
                          "Neocortex"),
                          labels = c(
                            "Fresh",
                            "Ten.Minutes",
                            "One.Hour",
                            "Five.Hours",
                            "Ten.Hours",
                            "Fifteen.Hours",
                            "Neocortex"
                          )))
        l
save(Sequential.Data, 
     file = "12 Data Flints/Sequential Data.RData")
rm(list = ls())