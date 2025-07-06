-- Create riskfactor table for driver risk analysis
-- This table will be populated using Apache Pig script
-- Risk Factor = (Number of non-normal events / Total miles) * 1,000,000

CREATE TABLE riskfactor (
    driverid string,
    events bigint,
    totmiles bigint,
    riskfactor float
);

-- Note: This table is populated using the Pig script populate-riskfactor.pig
-- The Pig script joins geolocation events with driver mileage data
-- and calculates risk factor as events per million miles driven
