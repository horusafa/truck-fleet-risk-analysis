/* Import the CSV file */
proc import datafile='E:\Users\mxz230001\Desktop\Big Data Project\results.csv'
            out=your_dataset
            dbms=csv
            replace;
run;

/* Perform linear regression */
PROC PRINT DATA=your_dataset(OBS=10);RUN;
data your_dataset;
    set your_dataset;
    if model in ('Ford', 'Caterpillar', 'Peterbilt', 'Volvo', 'Navistar') then
        model = model;
    else
        model = 'Other';
run;
DATA your_dataset;
    SET your_dataset;
	IF model = 'Peterbilt' THEN model_Peterbilt = 1; 
    ELSE model_Peterbilt = 0;
  	IF model = 'Ford' THEN model_Ford = 1; 
    ELSE model_Ford = 0;
	IF model = 'Navistar' THEN model_Navistar = 1; 
    ELSE model_Navistar = 0;
	IF model = 'Volvo' THEN model_Volvo = 1; 
    ELSE model_Volvo = 0;
	IF model = 'Other' THEN model_Other = 1; 
    ELSE model_Other = 0;
RUN;
PROC REG DATA=your_dataset;
MODEL riskfactor = events totmiles max_speed avg_mileage model_Peterbilt model_Ford model_Navistar model_Volvo model_Other/VIF STB;
RUN;
