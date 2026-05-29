# Gans Scooter Demand Data Pipeline
## Project Overview
Gans is an e-scooter sharing startup aiming to operate in major cities worldwide. To support future demand prediction and fleet management, this project collects external data that may influence scooter usage, such as population, weather conditions, airports, and flight arrivals.

The objective is to build an end-to-end data pipeline that gathers data from multiple sources, transforms it, and stores it in a MySQL database for future analytics and predictive modeling.
## Business Problem
The availability of e-scooters in the right location at the right time is critical for operational success. Several factors influence scooter demand and movement patterns:

* Population density
* Weather conditions
* Airport activity
* Flight arrivals
* Tourism and commuting behavior

This project focuses on collecting and organizing these external data sources to support future demand forecasting.
## Data Sources
### Web Scraping
* City Informatiion
* Population data
### APIs
* Weather forecast data
* Airport information
* Flight arrival data
## Technologies Used
* Python
* Pandas
* BeautifulSoup
* Requests
* MySQL
* SQLAlchemy
* Jupyter Notebook
* Git & GitHub
## Project Workflow
1. Collect city and population data through web scraping
2. Retrieve weather, airport, and flight data through APIs
3. Clean and transform the data using Python
4. Store the data in a MySQL relational database
5. Prepare the dataset for future analytics and predictive modeling
## Database Schema
The MySQL database consists of the following tables:

**cities** : Stores city information.

**populations**: Stores population data by city.

**weathers** : Stores weather forecasts and weather-related metrics.

**airports** : Stores airport information.

**cities_airports** : Associative table linking cities and airports.

**flights** : Stores flight arrival information.
## Database Design
<img width="737" height="449" alt="image" src="https://github.com/user-attachments/assets/e35203cd-71fb-47ec-a22c-64b68d4ee067" />

## Repository Structure

- **README.md** – Project overview and documentation.
- **notebooks/** – Jupyter notebooks for web scraping, API data collection, and database operations.
- **sql/** – SQL script used to create the database and tables.
- **images/** – Contains the ERD.
- **requirements.txt** – List of Python packages required to run the project.
## Future Improvements
* Automate data collection with scheduled jobs
* Build dashboards for operational monitoring
* Develop machine learning models for scooter demand prediction
* Add additional external data sources such as events and public transportation information



