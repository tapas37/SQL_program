create database practice
use practice

select * from `insurance_data - insurance_data`

-- Show records of 'male' patient from 'southwest' region.
select * from `insurance_data - insurance_data` where gender ='male' and region='southwest'

-- Show all records having bmi in range 30 to 45 both inclusive.
select * from `insurance_data - insurance_data` where bmi between 30 and 45

-- Show minimum and maximum bloodpressure of diabetic patient who smokes. Make column names as MinBP and MaxBP respectively.
select 
MIN(bloodpressure) as MinBP, max(bloodpressure) as MaxBP 
from `insurance_data - insurance_data` 
where diabetic='Yes' and smoker='Yes'

-- Find no of unique patients who are not from southwest region.
select count(distinct patientID)  from `insurance_data - insurance_data` where region!='southwest'

-- Total claim amount from male smoker.
select sum(claim) as totalclaim from `insurance_data - insurance_data` where smoker='Yes' AND gender = 'male';

-- Select all records of south region.
select * from `insurance_data - insurance_data` where region like 'south%'

-- No of patient having normal blood pressure. Normal range[90-120]
select count(*) as normalbp
from `insurance_data - insurance_data`
where bloodpressure between 90 and 120

-- No of pateint belo 17 years of age having normal blood pressure as per below formula -
-- BP normal range = 80+(age in years × 2) to 100 + (age in years × 2)
-- Note: Formula taken just for practice, don't take in real sense.
select count(*) as normalbp 
from `insurance_data - insurance_data` 
where age <17 and  bloodpressure BETWEEN (80 + (age * 2)) AND (100 + (age * 2));

-- What is the average claim amount for non-smoking female patients who are diabetic?
select avg(claim)  from `insurance_data - insurance_data` where smoker='Yes' and diabetic='Yes'

-- Write a SQL query to update the claim amount for the patient with PatientID = 1234 to 5000.
UPDATE `insurance_data - insurance_data` 
set claim= 5000
where patientID=1234

-- Write a SQL query to delete all records for patients who are smokers and have no children.
select * from `insurance_data - insurance_data`

-- Write a SQL query to delete all records for patients who are smokers and have no children.
delete from `insurance_data - insurance_data` where smoker='Yes' and children=0

