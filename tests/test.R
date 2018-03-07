library(dplyr)

cleanStudents <- esp_cleanNames(students)

cleanStudents %>%
  esp_getYears() %>%
  esp_female(currentVar = gender, newVar = female) %>%
  esp_binary(currentVar = placement, newVar = placement) %>%
  esp_binary(currentVar = spanInterest, newVar = spanInterest) -> cleanStudents
