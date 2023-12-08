# UCSD DSC180A Capstone Project (Fall 2023)

## Description
The goal for this capstone project in DSC180A (Q1) is to replicate results found in the article "Multimorbidity states associated with higher mortality rates in organ dysfunction and sepsis: a data-driven analysis in critical care". We want to replicate and validate findings through data science techniques used in the paper. Linked [here](https://ccforum.biomedcentral.com/articles/10.1186/s13054-019-2486-6)

## Contributions
* Jiyeon Song: jis036@ucsd.edu
* Oakkar Aung: oaaung@ucsd.edu
* Rihana Mohamed: rmohamed@ucsd.edu
* Vibha Sastry: vsastry@ucsd.edu
* Mentor: Professor Kyle Shannon: kshannon@ucsd.edu

## Replication
### MIMIC-III Access
1. Create [PhysioNet Account](https://physionet.org/register/) and [CITI Program Account](https://about.citiprogram.org).
2. Follow [instructions](https://physionet.org/about/citi-course/) to complete "CITI Data or Specimens Only Research" course with over 90 percent pass rate.
3. Upload course report to PhysioNet under [training](https://physionet.org/settings/training/) tab.
4. Apply for credentialing on PhysioNet and wait 1 day to 3 weeks for approval.
5. Sign "Data Use Agreement" and then have access to data.

### MIMIC-III Local Database Setup
We created the MIMIC-III Local Database following the instructions provided by MIT-LCP (Laboratory of Computer Physiology) found [here](https://github.com/MIT-LCP/mimic-code/tree/main/mimic-iii/buildmimic/postgres).

### Data Prep and Processing
Place raw MIMIC data for MIMIC-III dataset into the raw_data folder. Run selected_datasets.sql to process data and keep processed data in the processed_data folder.

## DSC180A A05 Team 2 Environment Setup

###  Environment setup (native Python)
create a new virtual environment with the command prompt using
`python -m venv DSC180A_A05_T2`

Once you have activated your environment, install all required packages using the following command:
`pip install -r requirements.txt`

Deactivate the environment when all done:
`deactivate`

### Environment setup with conda (alternative to native Python)
Conda is a package and environment management system. You may install it using [this guide](https://docs.conda.io/projects/miniconda/en/latest/). 

1. Once you have conda installed, create a new conda environment with the annaconda prompt using:
`conda create -n DSC180A_A05_T2 python`

2. Activate the environment:
`conda activate DSC180A_A05_T2`

3. Once you have activated your environment, install all required packages using the following command:
`pip install -r requirements.txt`

4. If you want to deactivate the environment when all done:
`conda deactivate DSC180A_A05_T2`

5. If you want to remove the environment:
`conda remove -n DSC180A_A05_T2 --all`

[optional]
Check if the environment is installed in the local:
`conda env list`

If you want to see if the package(example, numpy package) is installed:
`pip show numpy`

## General Description of Repo:

### analysis_notebooks 
- Folder contains notebooks to run for all analyses in the project (kmeans, LCA, and understanding results of LCA)

### eda_notebooks 
- Folder contains notebooks to run EDA on patient cohort and discovered subgroups. Includes simple demographics EDA, network visualizations, etc. 

### helper_scripts
- Contains sql scripts with queries to run directly in psql in case of inability to connect to database from 01_create_cohort.ipynb in analysis_notebooks.

### raw_data
- Where original dataset is placed after intial download

### processed_data
- Folder where results of LCA (in the form of CSVs) and any other processed data is outputted. 

### CONTRIBUTION.md
- Contains table of contributions by each group member. 

### requirements.txt
- Contains required python packages for environment setup.

### final_result.pdf
- Report of what results can be expected from running our project


