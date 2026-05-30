-- Drop the database if it already exists
DROP DATABASE IF EXISTS gans_db;


-- Create the database
CREATE DATABASE gans_db;

-- Use the database
USE gans_db;


-- Create the 'cities' table
CREATE TABLE cities (
    city_id INT AUTO_INCREMENT,             -- Automatically generated ID for each city
    city VARCHAR(255) NOT NULL,  
    country VARCHAR(255) NOT NULL,
    latitude FLOAT NOT NULL,
    longitude FLOAT NOT NULL,
    PRIMARY KEY (city_id) 
                                           -- Primary key to uniquely identify each city
);

-- Create the 'population' table
CREATE TABLE population (
    city_id INT NOT NULL,
    population INT NOT NULL,                          -- Population
    timestamp_population DATE NOT NULL,               -- Year or full date
    PRIMARY KEY (city_id, timestamp_population),      -- Composite primary key
    FOREIGN KEY (city_id) REFERENCES cities(city_id)  -- Foreign key constraint
);

#DROP TABLE weather;
#DROP TABLE cities;

SELECT * FROM cities;

SELECT * FROM population;

-- Create the 'weather' table
CREATE TABLE weather (
    city_id INT NOT NULL,
    forecast_time DATETIME NOT NULL,
    temperature FLOAT,
    forecast VARCHAR(255),
    rain_in_last_3h FLOAT,
    wind_speed FLOAT,
    data_retrieved_at DATETIME NOT NULL,

    PRIMARY KEY (city_id, forecast_time, data_retrieved_at),

    FOREIGN KEY (city_id)
        REFERENCES cities(city_id)
);

SELECT * FROM weather;

-- create the airports table
CREATE TABLE airports (
    icao VARCHAR(4) NOT NULL,
	iata VARCHAR(5),
    airport_name VARCHAR(255),
    longitude FLOAT,
    latitude FLOAT,
    PRIMARY KEY (icao)
);

-- Create the 'cities_airports' table to establish a many-to-many relationship between cities and airports
CREATE TABLE cities_airports (
    city_id INT NOT NULL,
    icao VARCHAR(4) NOT NULL,
    PRIMARY KEY (city_id, icao),
    FOREIGN KEY (city_id) REFERENCES cities(city_id),
    FOREIGN KEY (icao) REFERENCES airports(icao)
);

CREATE TABLE flights (
    icao VARCHAR(4) NOT NULL,
    flight_number VARCHAR(15) NOT NULL,
    scheduled_arrival_time DATETIME NOT NULL,
    updated_arrival_time DATETIME,
    departure_airport VARCHAR(255),
    PRIMARY KEY (icao, flight_number, scheduled_arrival_time),
    FOREIGN KEY (icao) REFERENCES airports(icao)
);

SELECT * FROM airports;

SELECT * FROM cities_airports;

SELECT * FROM flights;