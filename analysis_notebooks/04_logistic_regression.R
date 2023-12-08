# Load the necessary libraries
install.packages(dplyr)
library(dplyr)

# File names of your CSV files
file_names <- c("C:/Users/jyson/dsc180ab/sepsis-dsproject/subgroup_4.csv", 
                "C:/Users/jyson/dsc180ab/sepsis-dsproject/subgroup_3.csv", 
                "C:/Users/jyson/dsc180ab/sepsis-dsproject/subgroup_7.csv", 
                "C:/Users/jyson/dsc180ab/sepsis-dsproject/subgroup_6.csv", 
                "C:/Users/jyson/dsc180ab/sepsis-dsproject/subgroup_1.csv", 
                "C:/Users/jyson/dsc180ab/sepsis-dsproject/subgroup_2.csv")

# Read and merge all files
all_data <- lapply(file_names, read.csv) %>% bind_rows()

# List of specific comorbidities
comorbidity_columns <- c(
  "congestive_heart_failure", "cardiac_arrhythmias", "valvular_disease",
  "pulmonary_circulation", "peripheral_vascular", "hypertension",
  "paralysis", "other_neurological", "chronic_pulmonary",
  "diabetes_uncomplicated", "diabetes_complicated", "hypothyroidism",
  "renal_failure", "liver_disease", "peptic_ulcer", "aids",
  "lymphoma", "metastatic_cancer", "solid_tumor", "rheumatoid_arthritis",
  "coagulopathy", "obesity", "weight_loss", "fluid_electrolyte",
  "blood_loss_anemia", "deficiency_anemias", "alcohol_abuse",
  "drug_abuse", "psychoses", "depression"
)

# Loop through each comorbidity and perform logistic regression
for (morbidity in comorbidity_columns) {
  formula <- as.formula(paste(morbidity, "~ factor(subgroup)"))
  model <- glm(formula, family = binomial(link = "logit"), data = all_data)
  print(paste("Logistic Regression for", morbidity))
  print(summary(model))
  cat("\n\n")
}

