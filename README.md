# Fun_with_ETL

### Goal:

The aim was to gather information for hospitals, schools and home prices in california to run further analysis.

# Extracting and loading to relational database(postgreSQL):

The code for the transformations and loading is in the CSV_to_Postgres.ipynb Jupyter Notebook.
Please add your password for postgres in config.py before running the code.

# Hospitals data ETL:

## Extract:
1. The data for hospitals in California is obtained through Kaggle. The source is https://www.kaggle.com/carlosaguayo/usa-hospitals/version/1. The file was in CSV format and has been downloaded and stored in the resources directory and the name of the file is "Hospitals.CSV".
2. I was also looking for ratings of hospitals and hence used Kaggle to get the data as well. The link is https://www.kaggle.com/center-for-medicare-and-medicaid/hospital-ratings. It was in the CSV format and it has been downloaded and stored in resources as "Hospital General Information"

## Transform:
1. Both the datasets had the data for hospitals throughout the US. Hence, the data related to California has been filtered.
2. In the Hospital General Information.csv the ratings were there for certain hospitals. The hospitals that did not have ratings was removed.
3. The next step is to join both the dataframes. The hospital rating dataframe and hospitals dataframe was merged based on the name.
4. Few hospitals have ratings and few don't after merging. There is no strong restriction that the rating need to be not null and hence irrespective of ratings the hospital is updated in the DB.
5. The duplicate hospitals were removed before loading the dataframe to DB.

## Loading:
The data has been loaded to postgreSQL and the schema.sql has the code for the table creation. 

# Schools data ETL:

## Extract:

The data has been used from https://www.cde.ca.gov/ds/si/ds/pubschls.asp. It has been dowloaded in the CSV format and the file is available under resources in the name Public_Schools_CA.csv

## Transform:

1. As the first step the required columns have been selected and they are ['County','District','School','Street','Zip','State','WebSite','Phone','Latitude','Longitude'].
2. As per the requirement we need only the 5 digit zipcode and the code for extracting that is written and updated.
3. Similarly the phone number is cleaned by removing the characters and extracting the numbers.
4. There were three schools that did not have thier phone numbers. By seraching the internet the numbers have been updated and one school is not active and hence it is removed from the database. 

## Loading:
The data has been loaded to postgreSQL and the schema.sql has the code for the table creation. 

# Extracting and loading to Mongo DB:






