-- Create trucks_mg table for additional truck mileage data
-- Simplified format with date, miles, and gas columns

CREATE TABLE trucks_mg (
    driverid string, 
    truckid string, 
    model string, 
    Tdate string, 
    miles bigint, 
    gas bigint
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
TBLPROPERTIES ("skip.header.line.count"="1");

-- Load data from trucks_mg CSV file
-- LOAD DATA LOCAL INPATH '/path/to/trucks_mg.csv' INTO TABLE trucks_mg;