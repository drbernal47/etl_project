# etl_project

This project takes data from two csv files and extracts it, transforms it, and loads it into a sql database using an engine connection.

## How to access project files

### Clone the Git hub repo
### Use the csv files found in Resources: 
* Salaries-by-college-type.csv
* Salaries-by-region.csv

These csv files are from kaggle site (https://www.kaggle.com/wsj/college-salaries?select=salaries-by-region.csv)


### Open the jupyter notebook (ETL_Project.ipynb)

### Run the dependencies

We used pandas in order to store data from csv as dataframe.
We also used create_engine from sqlalchemy in order to connect to the sql database and load the data.
We also stored all our information used to connect to the local database in a file called config.py so that we could avoid pushing our PgAdmin password to the repository.

### Run the Extract cells
```
## Store CSV paths
## Read CSV
## Store CSV Data onto a Data Frame 
## Transform
## Start with college type data
## Drop unneccessary columns to only have the columns "School Name" and " School Type" save this as a new copy of the dataframe
## Rename the columns to lower-case with no spaces for easier transition to SQL
## Drop duplicate school_names
## Set the the index as 'school_name'
## Salary data
## Drop unneccessary columns to only have the columns "School Name", "Region", "Starting Median salary", "Mid-Career Median Salary" save this as a new copy of the dataframe
## Rename the columns to lower-case with no spaces for easier transition to SQL
## Clean up the salary values types to remove "$" and "," and convert to float
## Drop duplicate school_names
## Set the the index as 'school_name'
## Load - pgAdmin
## Open a pgAdmin browser and create a new database
## Create a table that correspondes to the college type data frame with the same column titles and types
## Create another table that correspondes with the salaries data frame that has the same column titles and types
## Run table creation code
## Check that the tables are created by doing a Select * from ____ query
## Back on the jupyter notebook
## Create a new .py file
## Name it config.py
## Add in your pgAdmin - username, password, localhost_number, database_name
## Add config.py to dependencies
## Load - jupyter notebook
## Create a connection the 
