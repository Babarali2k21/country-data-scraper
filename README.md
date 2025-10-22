# Country Data Scraper

## Overview
This project is a simple R script that **scrapes country data** (name, capital, population, and area) from [Scrape This Site](https://scrapethissite.com/pages/simple/) and saves the results in a CSV file.  

It was created as part of an R programming assignment to practice **web scraping, data cleaning, and exporting data in tabular format**.

---

## Tools & Libraries
The script uses the following R packages:
- **rvest** → for web scraping and reading HTML content  
- **dplyr** → for cleaning and organizing data  
- **readr** → for saving the results as a CSV file  

---

## Files in this repository
- `assignment_2.R` → R script that performs the scraping and saves the CSV  
- `countries.csv` → The resulting dataset with country information  

---

## How to Run the Script
1. Make sure you have R (and RStudio, recommended) installed.  
2. Install the required libraries if you don’t already have them:

   ```r
   install.packages("rvest")
   install.packages("dplyr")
   install.packages("readr")
