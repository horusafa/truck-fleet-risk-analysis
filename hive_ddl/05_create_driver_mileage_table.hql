-- Create DriverMileage table from truck_mileage table
-- Calculates total miles driven per driver across all months

CREATE TABLE DriverMileage AS
SELECT driverid, sum(miles) AS totmiles
FROM truck_mileage
GROUP BY driverid;
