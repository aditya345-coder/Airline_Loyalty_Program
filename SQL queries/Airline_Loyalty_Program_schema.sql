CREATE DATABASE IF NOT EXISTS Airline_Loyalty_Program;

USE Airline_Loyalty_Program;


CREATE TABLE Calendar(
Date VARCHAR(255), 
Start_of_Year VARCHAR(255), 
Start_of_Quarter VARCHAR(255), 
Start_of_Month VARCHAR(255)
);

SELECT * FROM Calendar;

SHOW VARIABLES LIKE "secure_file_priv";

LOAD DATA INFILE 'D:/MySQL/Airline_Loyalty_Program/Calendar.csv' INTO TABLE Calendar
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


CREATE TABLE Customer_Flight_Activity (
Loyalty_Number INTEGER,
Year INTEGER,
Month INTEGER,
Total_Flights INTEGER,
Distance INTEGER,
Points_Accumulated INTEGER,
Points_Redeemed INTEGER,
Dollar_Cost_Points_Redeemed INTEGER);

SELECT * FROM Customer_Flight_Activity;

LOAD DATA INFILE 'D:/MySQL/Airline_Loyalty_Program/Customer_Flight_Activity.csv' INTO TABLE Customer_Flight_Activity
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- --------------
CREATE TABLE Customer_Loyalty_History (
    Loyalty_Number INTEGER,
    Country VARCHAR(255),
    Province VARCHAR(255),
    City VARCHAR(255),
    Postal_Code VARCHAR(255),
    Gender VARCHAR(10),
    Education VARCHAR(255),
    Salary DECIMAL(10, 2),
    Marital_Status VARCHAR(255),
    Loyalty_Card VARCHAR(255),
    CLV DECIMAL(10, 2),
    Enrollment_Type VARCHAR(255),
    Enrollment_Year INT,
    Enrollment_Month INT,
    Cancellation_Year VARCHAR(255),
    Cancellation_Month VARCHAR(255)
);

SELECT * FROM Customer_Loyalty_History;

LOAD DATA INFILE 'D:/MySQL/Airline_Loyalty_Program/Customer_Loyalty_History.csv' INTO TABLE Customer_Loyalty_History
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;