# Analysis Notebooks
## This is where the main analyses of our project are. The notebooks should be run sequentially.

### 01_create_cohort.ipynb
- This notebook connects to your mimic database in Postgres and executes queries to create the necessary tables for our analyses. Run this before running 02_kmeans.ipynb. 

### 02_kmeans.ipynb 
- This notebook runs the initial k-means clustering, which uses disease prevalence in each age bracket to define cluster similarities. Run this after running 01_create_cohort.ipynb for an intial analysis on the patient cohort.

### 03_lca.Rmd 
- This file runs the Latent Class Analysis (main analysis).  Latent class analysis assumes the existence of latent subgroups and identifies them using mixture models on the given parameters. Make sure you have R studio installed on your machine as it is necessary to run the file and view outputs. Run this file after 02_kmeans.ipynb.

### 04_logistic_regression.ipynb
- This notebook runs logistic regression of the discovered subgroups to further verify the significance of individual morbidities in their selected groups. Run this notebook after 03_lca.Rmd.

### 05_morbidity_composition.ipynb
- This notebook includes essential processing of the subgroup CSVs outputted after running 03_lca.Rmd to understand the results of the LCA. Run this last after all the analysis notebooks. 
