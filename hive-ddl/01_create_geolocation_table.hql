-- Create geolocation table for truck fleet risk analysis
-- Contains truck location data, events, velocity, and idling information

CREATE TABLE geolocation (
    truckid string,
    driverid string,
    event string,
    latitude DOUBLE,
    longitude DOUBLE,
    city string,
    state string,
    velocity BIGINT,
    event_ind BIGINT,
    idling_ind BIGINT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
TBLPROPERTIES ("skip.header.line.count"="1");

-- Load data from geolocation CSV file
-- LOAD DATA LOCAL INPATH '/path/to/geolocation.csv' INTO TABLE geolocation;
