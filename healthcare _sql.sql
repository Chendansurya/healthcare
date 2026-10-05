show databases;
use healthcare;
select * from healthcare;

##1. Average length of stay by disease
SELECT disease, AVG(length_of_stay) AS average_stay
FROM healthcare
GROUP BY disease;

##2. Readmissions by disease
SELECT disease, COUNT(*) AS readmissions
FROM healthcare
WHERE readmission_flag = 'Yes'
GROUP BY disease;

##3. Average medication cost by disease
SELECT disease, AVG(medication_cost) AS average_medication_cost
FROM healthcare
GROUP BY disease;

##4. Which hospitals treated the most patients?
SELECT hospital, COUNT(*) AS patient_count
FROM healthcare
GROUP BY hospital
ORDER BY patient_count DESC
LIMIT 10;

##Which 5 states have the highest total treatment costs?
SELECT state, SUM(treatment_cost) AS total_cost
FROM healthcare
GROUP BY state
ORDER BY total_cost DESC
LIMIT 5;

##6.What is the distribution of patients by bed type?
SELECT bed_type, COUNT(*) AS total_patients
FROM healthcare
GROUP BY bed_type
ORDER BY total_patients DESC;

##7.Which doctors handled the most patients?
SELECT doctor_id, COUNT(*) AS total_patients
FROM healthcare
GROUP BY doctor_id
ORDER BY total_patients DESC
LIMIT 10;

##8.What is the average treatment cost by bed type?
SELECT bed_type, AVG(treatment_cost) AS avg_treatment_cost
FROM healthcare
GROUP BY bed_type
ORDER BY avg_treatment_cost DESC;





