SELECT * FROM calendar;

SELECT * FROM customer_flight_activity;

SELECT * FROM customer_loyalty_history;

SELECT COUNT(*) AS total_rows FROM calendar; # total rows: 2557

SELECT COUNT(*) AS total_rows FROM customer_flight_activity; # total rows: 392936

SELECT COUNT(*) AS total_rows FROM customer_loyalty_history; # total rows: 16737

# temporary table
CREATE TEMPORARY TABLE temp_flight AS 
SELECT 
clh.Loyalty_Number,
clh.Country,
clh.Province,
clh.City,
clh.Postal_Code,
clh.Gender,
clh.Education,
clh.Salary,
clh.Marital_Status,
clh.Loyalty_Card,
clh.CLV,
clh.Enrollment_Type,
clh.Enrollment_Year,
clh.Enrollment_Month,
clh.Cancellation_Year,
clh.Cancellation_Month,
cfa.Year,
cfa.Month,
cfa.Total_Flights,
cfa.Distance,
cfa.Points_Accumulated,
cfa.Points_Redeemed,
cfa.Dollar_Cost_Points_Redeemed
FROM customer_flight_activity cfa
JOIN customer_loyalty_history clh ON cfa.Loyalty_Number=clh.Loyalty_Number;

SELECT * FROM temp_flight;

-- Total rows 
SELECT COUNT(*) AS total_rows FROM temp_flight; # total rows: 392936

SELECT DISTINCT year FROM temp_flight; # The data is of 2017-2018

SELECT DISTINCT month FROM temp_flight ORDER BY month;

-- Total number of male and female
SELECT Gender, COUNT(*) AS "Number_of_M/F"
FROM temp_flight
GROUP BY Gender;
# Conclusion: Male: 195744; Female: 197192


-- Total number of education level 
SELECT Education, COUNT(*) AS "Education_Level_Counts"
FROM temp_flight
GROUP BY Education;
# Conclusion: College: 99565, Bachelor: 245484, High School or Below: 18358, Doctor: 17440, Master: 12089,


-- Total number of Marital_Status
SELECT Marital_Status, COUNT(*) AS "Marital_Status_Count"
FROM temp_flight
GROUP BY Marital_Status;
# Conclusion: Single: 105281, Married: 228507, Divorced: 59148


-- Total number of Loyalty_Card_Count  (Star > Nova > Aurora)
SELECT Loyalty_Card, COUNT(*) AS "Loyalty_Card_Count"
FROM temp_flight
GROUP BY Loyalty_Card;
# Conclusion: Star: 178595, Nova: 81076, Aurora: 133265


-- Total number of Enrollment_Year_Count
SELECT Enrollment_Year, COUNT(*) AS "Enrollment_Year_Count"
FROM temp_flight
GROUP BY Enrollment_Year
ORDER BY Enrollment_Year;


SELECT Enrollment_Year, COUNT(*) AS "Enrollment_Year_Count"
FROM temp_flight
GROUP BY Enrollment_Year
ORDER BY COUNT(*) DESC;
# Conclusion: highest number of enrollment is in 2017.


-- Total number of Enrollment_Type_Count
SELECT Enrollment_Type, COUNT(*) AS "Enrollment_Type_Count"
FROM temp_flight
GROUP BY Enrollment_Type;
# Conclusion: 2018 Promotion: 10736, Standard: 382200

-- Distinct country
SELECT DISTINCT country
FROM temp_flight;
# Conclusion: Canada

-- Province Count
SELECT Province, COUNT(*) AS "Province_Count"
FROM temp_flight
GROUP BY Province;
# Conclusion: British Columbia: 103208,Alberta: 22893, Quebec: 76900, Ontario: 127022, Yukon: 2571, 
# Nova Scotia: 12329, Manitoba: 15711, Newfoundland: 6104, Saskatchewan: 9624, New Brunswick: 15003, Prince Edward Island: 1571

-- Average salary
SELECT ROUND(AVG(Salary)) AS Salary FROM temp_flight;
# Conclusion: Rs 59369

SELECT MAX(Salary) AS Max_Salary FROM temp_flight; # 407228.00

SELECT MIN(Salary) AS Min_Salary FROM temp_flight; # -58486.00 ??

-- Average salary according Loyalty Card (Star > Nova > Aurora)
SELECT Loyalty_Card, ROUND(AVG(Salary),2) AS Salary
FROM temp_flight
GROUP BY Loyalty_Card
ORDER BY ROUND(AVG(Salary),2) DESC;
# Conclusion:  Aurora: Rs. 61006.86, Nova: Rs. 60503.96, Star: Rs. 57778.94


-- Average salary according to Marital Status
SELECT Marital_Status, ROUND(AVG(Salary),2) AS Salary
FROM temp_flight
GROUP BY Marital_Status
ORDER BY ROUND(AVG(Salary),2) DESC;
# Conclusion: Divorced: Rs. 71496.87, Married: Rs. 67400.83, Single: Rs. 35123.37


-- Average salary according to Province
SELECT Province, ROUND(AVG(Salary),2)  AS Salary
FROM temp_flight
GROUP BY Province
ORDER BY ROUND(AVG(Salary),2) DESC;
# Conclusion: The highest salary of the region is New Brunswick with average salary of Rs. 63100.40 and second highest is Nova Scotia with average salary of Rs. 61169.40
# The lowest salary is of Newfoundland region with average salary of Rs. 56373.33

-- Average salary according to Eduction
SELECT Education, ROUND(AVG(Salary),2)  AS Salary
FROM temp_flight
GROUP BY Education
ORDER BY ROUND(AVG(Salary),2) DESC;
# Conclusion: Doctor have highest salary of Rs. 175992.24 and Second highest is of Master with salary of Rs. 103863.98
# College have lowest salary of Rs. 0.00

-- Average salary according to City
SELECT City, ROUND(AVG(Salary),2)  AS Salary
FROM temp_flight
GROUP BY City
ORDER BY ROUND(AVG(Salary),2) DESC;
# Conclusion: The city with highest salary is Hull with average salary Rs. 66648.71 and second highest is Trembland with average salary Rs. 63632.17
# The city with lowest salary is Kelowna with average salary Rs. 54301.17.

SELECT * FROM temp_flight;

-- total average flights according to year
SELECT year, AVG(total_flights) AS total_flights
FROM temp_flight
GROUP BY year;
# Conlusion: The maximum average number of flights were in 2018


-- max total flights according to year
SELECT year, MAX(total_flights) AS max_total_flights
FROM temp_flight
GROUP BY year;
# Conlusion: The maximum number of flights were in 2018


-- min flights according to year
SELECT year, MIN(total_flights) AS min_total_flights
FROM temp_flight
GROUP BY year;
# Conlusion: Minimum flights per year is 0

-- 
SELECT month, AVG(total_flights) AS total_flights
FROM temp_flight
GROUP BY month
ORDER BY AVG(total_flights) DESC;
# Conlusion: highest Average flights were in 7th month.

-- 
SELECT month, MAX(total_flights) AS max_total_flights
FROM temp_flight
GROUP BY month
ORDER BY MAX(total_flights) DESC;
# Conlusion: max flight were in 7th month that is 28 total tickits

-- 
SELECT month, MIN(total_flights) AS min_total_flights
FROM temp_flight
GROUP BY month
ORDER BY MIN(total_flights) DESC;
# Conclusion: The minimum total flights are 0


-- What impact did the campaign have on loyalty program memberships (gross / net)?

-- Was the campaign adoption more successful for certain demographics of loyalty members?

-- What impact did the campaign have on booked flights during summer?

-- Drop temporary table
DROP TABLE flight;