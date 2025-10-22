# A script to collect country data (name, capital, population, area) and save it as a CSV file

# Load the required libraries
library(rvest)    # for web scraping
library(dplyr)    # for data cleaning
library(readr)    # for saving CSV files

# Step 1: Define the website we want to scrape
url <- "https://scrapethissite.com/pages/simple/"

# Step 2: Read the web page
page <- read_html(url)

# Step 3: Extract the data we need (using the right CSS classes from the page)
country_names <- page %>% html_nodes(".country-name") %>% html_text(trim = TRUE)
country_capitals <- page %>% html_nodes(".country-capital") %>% html_text(trim = TRUE)
country_populations <- page %>% html_nodes(".country-population") %>% html_text(trim = TRUE)
country_areas <- page %>% html_nodes(".country-area") %>% html_text(trim = TRUE)

# Step 4: Put everything into a clean table
countries <- tibble(
  name = country_names,
  capital = country_capitals,
  population = as.numeric(gsub(",", "", country_populations)), 
  area = as.numeric(gsub(",", "", country_areas))              
)

# Step 5: Save the table as a CSV file in the working directory
write_csv(countries, "countries.csv")


print(head(countries))