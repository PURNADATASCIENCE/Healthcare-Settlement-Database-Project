Create database Healthcare_settlement;

-- Use the database
USE Healthcare_settlement;

-- Create Table Statement for "HealthcareData".
CREATE TABLE HealthcareData (
    Patient_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(255),
    Age INT,
    Gender VARCHAR(10),
    Settlement_Date DATE,
    Settlement_Amount DECIMAL(10 , 2 ),
    Healthcare_Provider VARCHAR(255),
    Provider_Location VARCHAR(255),
    Treatment_Type VARCHAR(255),
    Treatment_Start_Date DATE,
    Treatment_End_Date DATE,
    Cost_of_Treatment DECIMAL(10 , 2 ),
    Insurance_Coverage DECIMAL(10 , 2 ),
    Out_of_Pocket_Cost DECIMAL(10 , 2 ),
    Follow_Up_Required VARCHAR(3),
    Follow_Up_Date DATE,
    Treatment_Success VARCHAR(3),
    Additional_Notes TEXT
);


SELECT 
    *
FROM
    healthcaredata;


-- Insert Data into HealthcareData Table
INSERT INTO HealthcareData (Patient_ID, Patient_Name, Age, Gender, Settlement_Date, Settlement_Amount, Healthcare_Provider, Provider_Location, Treatment_Type, Treatment_Start_Date, Treatment_End_Date, Cost_of_Treatment, Insurance_Coverage, Out_of_Pocket_Cost, Follow_Up_Required, Follow_Up_Date, Treatment_Success, Additional_Notes)
VALUES 
(1, 'John Doe', 42, 'Male', '2022-05-14', 20000, 'MediCare Health', 'Location 5', 'Surgery', '2022-05-20', '2022-06-15', 15000, 10000, 5000, 'Yes', '2022-08-15', 'Yes', 'Patient showed improvement'),
(2, 'Jane Smith', 36, 'Female', '2021-09-10', 15000, 'Wellness Clinic', 'Location 2', 'Physical Therapy', '2021-09-12', '2021-09-30', 12000, 9000, 3000, 'No', NULL, 'Yes', 'No complications'),
(3, 'Michael Brown', 55, 'Male', '2020-11-05', 32000, 'City Hospital', 'Location 8', 'Counseling', '2020-11-10', '2020-12-10', 18000, 15000, 3000, 'Yes', '2021-02-15', 'Yes', 'Requires further observation'),
(4, 'Emily Davis', 29, 'Female', '2023-02-20', 24000, 'Family Care Center', 'Location 7', 'Medication', '2023-02-25', '2023-03-10', 7000, 5000, 2000, 'No', NULL, 'Yes', 'Patient showed improvement'),
(5, 'David Wilson', 47, 'Male', '2022-03-18', 28000, 'Health Plus', 'Location 3', 'Rehabilitation', '2022-03-20', '2022-04-15', 21000, 18000, 3000, 'Yes', '2022-06-20', 'No', 'Follow-up recommended'),
(6, 'Sarah Johnson', 62, 'Female', '2021-06-25', 18000, 'Total Care', 'Location 9', 'Surgery', '2021-07-01', '2021-07-25', 25000, 20000, 5000, 'Yes', '2021-10-01', 'Yes', 'Patient showed improvement'),
(7, 'Chris Lee', 30, 'Male', '2020-12-30', 10000, 'MediCare Health', 'Location 4', 'Physical Therapy', '2021-01-05', '2021-01-20', 8000, 6000, 2000, 'No', NULL, 'Yes', 'No complications'),
(8, 'Anna Martin', 40, 'Female', '2023-05-10', 15000, 'Wellness Clinic', 'Location 1', 'Counseling', '2023-05-15', '2023-06-10', 10000, 7500, 2500, 'No', NULL, 'Yes', 'Requires further observation'),
(9, 'James White', 53, 'Male', '2022-11-15', 40000, 'City Hospital', 'Location 6', 'Medication', '2022-11-20', '2022-12-05', 15000, 12000, 3000, 'Yes', '2023-01-15', 'Yes', 'Follow-up recommended'),
(10, 'Laura Thompson', 45, 'Female', '2021-01-22', 27000, 'Family Care Center', 'Location 3', 'Surgery', '2021-01-28', '2021-02-20', 20000, 15000, 5000, 'Yes', '2021-04-22', 'Yes', 'Patient showed improvement'),
(11, 'Paul Harris', 60, 'Male', '2023-03-12', 35000, 'Health Plus', 'Location 2', 'Rehabilitation', '2023-03-15', '2023-04-10', 25000, 20000, 5000, 'Yes', '2023-06-20', 'Yes', 'Follow-up recommended'),
(12, 'Olivia Green', 38, 'Female', '2021-08-18', 22000, 'City Hospital', 'Location 5', 'Surgery', '2021-08-22', '2021-09-12', 16000, 12000, 4000, 'No', NULL, 'Yes', 'No complications'),
(13, 'Benjamin Scott', 52, 'Male', '2020-05-10', 28000, 'Wellness Clinic', 'Location 4', 'Physical Therapy', '2020-05-15', '2020-05-30', 10000, 7500, 2500, 'No', NULL, 'Yes', 'Patient showed improvement'),
(14, 'Emma Wright', 25, 'Female', '2022-12-01', 19000, 'Family Care Center', 'Location 8', 'Medication', '2022-12-05', '2022-12-15', 7000, 5000, 2000, 'Yes', '2023-01-15', 'Yes', 'Requires further observation'),
(15, 'William King', 64, 'Male', '2023-07-14', 33000, 'Total Care', 'Location 6', 'Counseling', '2023-07-18', '2023-08-08', 20000, 15000, 5000, 'No', NULL, 'Yes', 'Follow-up recommended'),
(16, 'Ava Adams', 29, 'Female', '2021-10-10', 25000, 'MediCare Health', 'Location 9', 'Surgery', '2021-10-15', '2021-11-05', 20000, 15000, 5000, 'Yes', '2022-01-10', 'Yes', 'No complications'),
(17, 'Elijah Baker', 48, 'Male', '2020-11-25', 20000, 'Wellness Clinic', 'Location 1', 'Physical Therapy', '2020-11-28', '2020-12-15', 12000, 10000, 2000, 'No', NULL, 'Yes', 'Patient showed improvement'),
(18, 'Mia Lewis', 33, 'Female', '2022-02-18', 14000, 'City Hospital', 'Location 3', 'Medication', '2022-02-20', '2022-03-05', 6000, 4000, 2000, 'No', NULL, 'Yes', 'No complications'),
(19, 'Lucas Young', 50, 'Male', '2023-09-05', 26000, 'Health Plus', 'Location 7', 'Counseling', '2023-09-08', '2023-09-25', 18000, 15000, 3000, 'Yes', '2023-11-10', 'Yes', 'Requires further observation'),
(20, 'Sophia Hill', 43, 'Female', '2021-12-20', 17000, 'Family Care Center', 'Location 10', 'Rehabilitation', '2021-12-22', '2022-01-15', 15000, 12000, 3000, 'Yes', '2022-03-01', 'No', 'Follow-up recommended'),
(21, 'Daniel Moore', 54, 'Male', '2022-08-18', 29000, 'MediCare Health', 'Location 3', 'Surgery', '2022-08-20', '2022-09-10', 22000, 17000, 5000, 'Yes', '2022-11-20', 'Yes', 'No complications'),
(22, 'Isabella Evans', 31, 'Female', '2023-01-25', 21000, 'Wellness Clinic', 'Location 5', 'Physical Therapy', '2023-01-28', '2023-02-15', 15000, 12000, 3000, 'No', NULL, 'Yes', 'Patient showed improvement'),
(23, 'Noah Allen', 46, 'Male', '2021-03-14', 35000, 'City Hospital', 'Location 9', 'Rehabilitation', '2021-03-16', '2021-04-05', 25000, 20000, 5000, 'Yes', '2021-06-15', 'Yes', 'Follow-up recommended'),
(24, 'Grace Turner', 39, 'Female', '2020-06-18', 26000, 'Family Care Center', 'Location 7', 'Counseling', '2020-06-20', '2020-07-10', 18000, 15000, 3000, 'No', NULL, 'Yes', 'Requires further observation'),
(25, 'Oliver Stewart', 37, 'Male', '2022-04-22', 19000, 'Health Plus', 'Location 4', 'Medication', '2022-04-25', '2022-05-10', 8000, 6000, 2000, 'Yes', '2022-06-25', 'Yes', 'Patient showed improvement'),
(26, 'Liam Howard', 28, 'Male', '2021-07-10', 24000, 'MediCare Health', 'Location 8', 'Physical Therapy', '2021-07-12', '2021-07-30', 18000, 15000, 3000, 'No', NULL, 'Yes', 'No complications'),
(27, 'Amelia Brooks', 41, 'Female', '2023-02-15', 32000, 'Wellness Clinic', 'Location 1', 'Rehabilitation', '2023-02-18', '2023-03-10', 21000, 18000, 3000, 'Yes', '2023-05-20', 'Yes', 'Follow-up recommended'),
(28, 'Ethan Walker', 44, 'Male', '2020-09-05', 27000, 'City Hospital', 'Location 6', 'Counseling', '2020-09-08', '2020-09-25', 16000, 12000, 4000, 'Yes', '2020-11-15', 'Yes', 'Requires further observation'),
(29, 'Zoe Campbell', 56, 'Female', '2022-10-22', 34000, 'Family Care Center', 'Location 10', 'Surgery', '2022-10-25', '2022-11-20', 25000, 20000, 5000, 'Yes', '2023-01-22', 'Yes', 'Patient showed improvement'),
(30, 'Alexander Rogers', 49, 'Male', '2023-06-12', 25000, 'Total Care', 'Location 2', 'Physical Therapy', '2023-06-15', '2023-07-10', 12000, 9000, 3000, 'No', NULL, 'Yes', 'No complications');

-- Retrieve all records:
-- Write a query to display all the records from the dataset.
SELECT 
    *
FROM
    HealthcareData;

-- Find patients over a certain age:
-- Write a query to find all patients older than 50 years.
SELECT 
    *
FROM
    HealthcareData
WHERE
    Age > 50;

-- List all treatments involving surgery:
-- Write a query to list all patients who underwent surgery.
SELECT 
    *
FROM
    HealthcareData
WHERE
    Treatment_Type = 'Surgery';

-- Count the number of male and female patients:
-- Write a query to count how many male and female patients are in the dataset.
SELECT 
    Gender, COUNT(*) AS NumberOfPatients
FROM
    HealthcareData
GROUP BY Gender;

-- Identify patients who required follow-up:
-- Write a query to find all patients who required a follow-up.
SELECT 
    *
FROM
    HealthcareData
WHERE
    Follow_Up_Required = 'Yes';

-- Calculate total settlement amount by healthcare provider:
-- Write a query to calculate the total settlement amount distributed by each healthcare provider.
SELECT 
    Healthcare_Provider,
    SUM(Settlement_Amount) AS TotalSettlementAmount
FROM
    HealthcareData
GROUP BY Healthcare_Provider;

-- Find the most common treatment type:
-- Write a query to determine the most common type of treatment provided.
SELECT 
    Treatment_Type, COUNT(*) AS Frequency
FROM
    HealthcareData
GROUP BY Treatment_Type
ORDER BY Frequency DESC
LIMIT 1;

-- Retrieve patients with successful treatments:
-- Write a query to find all patients whose treatment was successful.
SELECT 
    *
FROM
    HealthcareData
WHERE
    Treatment_Success = 'Yes';

-- Average cost of treatment by gender:
-- Write a query to find the average cost of treatment for male and female patients
SELECT 
    Gender, AVG(Cost_of_Treatment) AS AvgTreatmentCost
FROM
    HealthcareData
GROUP BY Gender;

-- List patients by provider location:
-- Write a query to list all patients grouped by the healthcare provider location.
-- sql
SELECT 
    Provider_Location, COUNT(*) AS NumberOfPatients
FROM
    HealthcareData
GROUP BY Provider_Location;

-- Find patients with the highest out-of-pocket costs:
-- Write a query to list patients with the highest out-of-pocket costs.
SELECT 
    *
FROM
    HealthcareData
ORDER BY Out_of_Pocket_Cost DESC
LIMIT 5;

-- Calculate the total treatment cost for each settlement date:
-- Write a query to calculate the total cost of treatment for patients based on their settlement date.
SELECT 
    Settlement_Date,
    SUM(Cost_of_Treatment) AS TotalTreatmentCost
FROM
    HealthcareData
GROUP BY Settlement_Date;

-- Identify patients treated within a specific date range:
-- Write a query to find all patients who were treated between '2022-01-01' and '2022-12-31'.
SELECT 
    *
FROM
    HealthcareData
WHERE
    Treatment_Start_Date BETWEEN '2022-01-01' AND '2022-12-31';

-- Find healthcare providers who performed more than one type of treatment:
-- Write a query to list healthcare providers who have performed more than one type of treatment.
SELECT 
    Healthcare_Provider,
    COUNT(DISTINCT Treatment_Type) AS NumberOfTreatments
FROM
    HealthcareData
GROUP BY Healthcare_Provider
HAVING NumberOfTreatments > 1;

-- Calculate the percentage of patients requiring follow-up:
-- Write a query to calculate the percentage of patients who required follow-up care.
SELECT (COUNT(*) FILTER(WHERE Follow_Up_Required = 'Yes') * 100.0 / COUNT(*)) AS FollowUpPercentage FROM HealthcareData;

-- Total Settlement Amount by Healthcare Provider:
-- Write a query to find the total settlement amount distributed by each healthcare provider 
-- and only show providers with a total settlement amount greater than ₹50,000.
SELECT 
    Healthcare_Provider,
    SUM(Settlement_Amount) AS TotalSettlementAmount
FROM
    HealthcareData
GROUP BY Healthcare_Provider
HAVING TotalSettlementAmount > 50000

-- Average Cost of Treatment by Treatment Type:
-- Write a query to calculate the average cost of treatment for each treatment type 
-- and display only those treatment types with an average cost greater than ₹15,000.
SELECT Treatment_Type, AVG(Cost_of_Treatment) AS AvgCost
FROM HealthcareData
GROUP BY Treatment_Type
HAVING AvgCost > 15000;

-- Number of Patients by Age Group:
-- Write a query to count the number of patients in each age group (e.g., 20-29, 30-39, etc.) 
-- and display only those age groups with more than 10 patients.
SELECT FLOOR(Age/10)*10 AS AgeGroup, COUNT(*) AS NumberOfPatients
FROM HealthcareData
GROUP BY AgeGroup
HAVING NumberOfPatients > 10;

-- List Patients by Settlement Amount:
-- Write a query to list all patients sorted 
-- by settlement amount in descending order.
SELECT Patient_ID, Patient_Name, Settlement_Amount
FROM HealthcareData
ORDER BY Settlement_Amount DESC;

-- Top 5 Most Expensive Treatments:
-- Write a query to retrieve the top 5 most expensive treatments 
-- based on the cost of treatment.
SELECT Patient_ID, Patient_Name, Treatment_Type, Cost_of_Treatment
FROM HealthcareData
ORDER BY Cost_of_Treatment DESC
LIMIT 5;

-- Patients Needing Follow-Up, Sorted by Follow-Up Date:
-- Write a query to list all patients who require a follow-up, 
-- sorted by the follow-up date in ascending order.
SELECT Patient_ID, Patient_Name, Follow_Up_Date
FROM HealthcareData
WHERE Follow_Up_Required = 'Yes'
ORDER BY Follow_Up_Date ASC;


-- Create Table Statement for "InsuranceProviders".
CREATE TABLE InsuranceData (
    Insurance_ID INT PRIMARY KEY,
    Provider_Name VARCHAR(255),
    Coverage_Percentage DECIMAL(5, 2)
);


-- Insert Data into InsuranceProviders Table
INSERT INTO InsuranceData (Insurance_ID, Provider_Name, Coverage_Percentage)
VALUES 
(1, 'United Healthcare', 80),
(2, 'Blue Cross Blue Shield', 70),
(3, 'Aetna', 65),
(4, 'Cigna', 75),
(5, 'Humana', 85),
(6, 'Kaiser Permanente', 90),
(7, 'Anthem', 60),
(8, 'Molina Healthcare', 50),
(9, 'WellCare', 55),
(10, 'Medicaid', 95),
(11, 'Tricare', 88),
(12, 'Health Net', 67),
(13, 'Centene', 77),
(14, 'Magellan Health', 73),
(15, 'Guardian Life', 82),
(16, 'Oscar Health', 65),
(17, 'Amerigroup', 69),
(18, 'MetLife', 78),
(19, 'Independence Blue Cross', 86),
(20, 'Principal Financial Group', 91),
(21, 'EmblemHealth', 76),
(22, 'Coventry Health Care', 64),
(23, 'Tufts Health Plan', 81),
(24, 'Highmark', 87),
(25, 'HealthPartners', 79),
(26, 'Geisinger Health', 83),
(27, 'WellPoint', 68),
(28, 'United Concordia', 66),
(29, 'BCBS of Massachusetts', 85),
(30, 'Premera Blue Cross', 74);

-- Join Healthcare Data with Insurance Providers:
-- Write a query to list all patients along with 
-- their insurance provider’s name and coverage percentage.
SELECT h.Patient_ID, h.Patient_Name, i.Provider_Name, i.Coverage_Percentage
FROM HealthcareData h
JOIN InsuranceData i ON h.Insurance_Coverage = i.Insurance_ID;

-- Patients with Low Insurance Coverage:
-- Write a query to list patients whose insurance coverage 
-- percentage is less than 50%.
SELECT h.Patient_ID, h.Patient_Name, i.Provider_Name, i.Coverage_Percentage
FROM HealthcareData h
JOIN InsuranceData i ON h.Insurance_Coverage = i.Insurance_ID
WHERE i.Coverage_Percentage < 50;

-- Total Out-of-Pocket Costs by Insurance Provider:
-- Write a query to calculate the total out-of-pocket costs 
-- for patients grouped by their insurance provider.
SELECT i.Provider_Name, SUM(h.Out_of_Pocket_Cost) AS TotalOutOfPocketCost
FROM HealthcareData h
JOIN InsuranceData i ON h.Insurance_Coverage = i.Insurance_ID
GROUP BY i.Provider_Name;


-- Calculate the Age Difference Between Youngest and Oldest Patient:
-- Write a query to calculate the difference in age between 
-- the youngest and oldest patient.
SELECT MAX(Age) - MIN(Age) AS AgeDifference
FROM HealthcareData;

-- Calculate the Average Settlement Amount Per Year:
-- Write a query to calculate the average settlement amount per year.
SELECT YEAR(Settlement_Date) AS Year, AVG(Settlement_Amount) AS AvgSettlementAmount
FROM HealthcareData
GROUP BY Year
ORDER BY Year ASC;

-- Find Patients Whose Name Starts with a Specific Letter:
-- Write a query to find all patients whose name starts with the letter 'A'.
SELECT Patient_ID, Patient_Name
FROM HealthcareData
WHERE Patient_Name LIKE 'A%';

-- Extract Year from Settlement Date:
-- Write a query to extract the year from the settlement date for each patient.
SELECT Patient_ID, Patient_Name, YEAR(Settlement_Date) AS SettlementYear
FROM HealthcareData;

-- Calculate Length of Treatment in Days:
-- Write a query to calculate the length of each patient's treatment in days.
SELECT Patient_ID, Patient_Name, DATEDIFF(Treatment_End_Date, Treatment_Start_Date) AS TreatmentLength
FROM HealthcareData;

-- Find the Maximum Cost of Treatment by Gender:
-- Write a query to find the maximum cost of treatment for each gender.
SELECT Gender, MAX(Cost_of_Treatment) AS MaxTreatmentCost
FROM HealthcareData
GROUP BY Gender;



