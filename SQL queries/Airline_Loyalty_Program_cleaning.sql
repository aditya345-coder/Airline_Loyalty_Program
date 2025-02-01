SELECT * FROM calendar;

ALTER TABLE calendar MODIFY COLUMN Date DATE; 

ALTER TABLE calendar MODIFY COLUMN Start_of_Year DATE; 

ALTER TABLE calendar MODIFY COLUMN Start_of_Quarter DATE; 

ALTER TABLE calendar MODIFY COLUMN Start_of_Month DATE; 

SELECT * FROM customer_flight_activity;

SELECT * FROM customer_loyalty_history;

-- Convert blank cell to null
UPDATE customer_loyalty_history
SET Cancellation_Year = NULL
WHERE Cancellation_Year = '';

ALTER TABLE customer_loyalty_history
MODIFY COLUMN Cancellation_Year SMALLINT;


UPDATE customer_loyalty_history
SET Cancellation_Month = NULL
WHERE Cancellation_Month = '';

ALTER TABLE customer_loyalty_history
MODIFY COLUMN Cancellation_Month SMALLINT;
