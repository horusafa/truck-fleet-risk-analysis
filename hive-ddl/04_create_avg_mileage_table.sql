-- Create avg_mileage table from truck_mileage table
-- Calculates average MPG per truck across all months

CREATE TABLE avg_mileage AS
SELECT truckid, avg(mpg) AS avgmpg
FROM truck_mileage
GROUP BY truckid;