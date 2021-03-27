# etl_project

This project takes data from two csv files and extracts it, transforms it, and loads it into a sql database using an engine connection. The project was completed by Humera Anjum, Jeannaej Yambing, and Daniel Bernal.

## How to access project files

### Clone the Git hub repo
### Use the csv files found in Resources: 
* Salaries-by-college-type.csv
* Salaries-by-region.csv

These csv files are from kaggle site (https://www.kaggle.com/wsj/college-salaries?select=salaries-by-region.csv)

### Create your local pgAdmin configuration
1. Create a new .py file
1. Name it config.py
1. Add in your pgAdmin local data - username, password, localhost_number, database_name

### Open the jupyter notebook (ETL_Project.ipynb)

### Run the dependencies

We used pandas in order to store data from csv as dataframe.
We also used create_engine from sqlalchemy in order to connect to the sql database and load the data.
We also stored all our information used to connect to the local database in a file called config.py so that we could avoid pushing our PgAdmin password to the repository.

### Run the Extract cells

1. Store CSVs paths
1. Read CSVs
1. Store CSV Data onto two Data Frames

### Run the Transform cells
1. Start with college type data
1. Drop unneccessary columns to only have the columns "School Name" and " School Type" save this as a new copy of the dataframe
1. Rename the columns to lower-case with no spaces for easier transition to SQL
1. Drop duplicate school_names
1. Set the the index as 'school_name'
1. Salary data
1. Drop unneccessary columns to only have the columns "School Name", "Region", "Starting Median salary", "Mid-Career Median Salary" save this as a new copy of the dataframe
1. Rename the columns to lower-case with no spaces for easier transition to SQL
1. Clean up the salary values types to remove "$" and "," and convert to float
1. Drop duplicate school_names
1 Set the the index as 'school_name'

### Separately, open PgAdmin
1. Open a pgAdmin browser and create a new database
1. Open the schemas.sql file and run the code to create tables (college_type and salaries)
1. Check that the tables are created by doing a Select * from ____ query

### On Jupyter Notebook run Load cells
1. Create a connection engine using the configuration variables
1. Open the connection
1. Check that the connection locates the tables in your sql database ('college_type' and 'salaries')
1. Load the dataframes into the sql database using sqlalchemy

### In PgAdmin run queries to test that data was successfully loaded
1. You can run each table query separately
1. You can then run a join query to ensure that the data is able to be merged
