-- Create trucks table for truck fleet risk analysis
-- Contains monthly mileage and gas consumption data from Jan 2009 to Jun 2013

CREATE TABLE trucks (
    driverid string, 
    truckid string, 
    model string, 
    jun13_miles bigint, jun13_gas bigint,
    may13_miles bigint, may13_gas bigint, 
    apr13_miles bigint, apr13_gas bigint, 
    mar13_miles bigint, mar13_gas bigint, 
    feb13_miles bigint, feb13_gas bigint, 
    jan13_miles bigint, jan13_gas bigint, 
    dec12_miles bigint, dec12_gas bigint, 
    nov12_miles bigint, nov12_gas bigint, 
    oct12_miles bigint, oct12_gas bigint,
    sep12_miles bigint, sep12_gas bigint, 
    aug12_miles bigint, aug12_gas bigint, 
    jul12_miles bigint, jul12_gas bigint, 
    jun12_miles bigint, jun12_gas bigint,
    may12_miles bigint, may12_gas bigint, 
    apr12_miles bigint, apr12_gas bigint, 
    mar12_miles bigint, mar12_gas bigint, 
    feb12_miles bigint, feb12_gas bigint, 
    jan12_miles bigint, jan12_gas bigint, 
    dec11_miles bigint, dec11_gas bigint, 
    nov11_miles bigint, nov11_gas bigint,
    oct11_miles bigint, oct11_gas bigint, 
    sep11_miles bigint, sep11_gas bigint, 
    aug11_miles bigint, aug11_gas bigint, 
    jul11_miles bigint, jul11_gas bigint, 
    jun11_miles bigint, jun11_gas bigint, 
    may11_miles bigint, may11_gas bigint, 
    apr11_miles bigint, apr11_gas bigint, 
    mar11_miles bigint, mar11_gas bigint,
    feb11_miles bigint, feb11_gas bigint, 
    jan11_miles bigint, jan11_gas bigint, 
    dec10_miles bigint, dec10_gas bigint, 
    nov10_miles bigint, nov10_gas bigint, 
    oct10_miles bigint, oct10_gas bigint, 
    sep10_miles bigint, sep10_gas bigint, 
    aug10_miles bigint, aug10_gas bigint, 
    jul10_miles bigint, jul10_gas bigint, 
    jun10_miles bigint, jun10_gas bigint, 
    may10_miles bigint, may10_gas bigint, 
    apr10_miles bigint, apr10_gas bigint,
    mar10_miles bigint, mar10_gas bigint, 
    feb10_miles bigint, feb10_gas bigint, 
    jan10_miles bigint, jan10_gas bigint, 
    dec09_miles bigint, dec09_gas bigint, 
    nov09_miles bigint, nov09_gas bigint, 
    oct09_miles bigint, oct09_gas bigint, 
    sep09_miles bigint, sep09_gas bigint, 
    aug09_miles bigint, aug09_gas bigint, 
    jul09_miles bigint, jul09_gas bigint, 
    jun09_miles bigint, jun09_gas bigint, 
    may09_miles bigint, may09_gas bigint,
    apr09_miles bigint, apr09_gas bigint, 
    mar09_miles bigint, mar09_gas bigint, 
    feb09_miles bigint, feb09_gas bigint, 
    jan09_miles bigint, jan09_gas bigint
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
TBLPROPERTIES ("skip.header.line.count"="1");

-- Load data from trucks CSV file
-- LOAD DATA LOCAL INPATH '/path/to/trucks.csv' INTO TABLE trucks;
