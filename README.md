# Healthcare-Settlement-Database-Project
![Health-Insurance-Claim-Settlement](https://github.com/user-attachments/assets/74f5043c-d408-4a27-b860-3aa965eb0bd0)

---

## Healthcare Settlements Database Project

### Overview

This project involves creating and managing a MySQL database for healthcare settlements. The database is designed to store and analyze data related to patient treatments, insurance coverage, and settlement amounts. The goal is to provide comprehensive insights into healthcare expenses and treatment outcomes.

### Features

- **Database Creation**: Set up a database named `Healthcare_settlement`.
- **Tables**: Created two main tables:
  - `HealthcareData`: Contains patient information, treatment details, and settlement data.
  - `InsuranceData`: Contains information about insurance providers and their coverage percentages.

- **Data Insertion**: Inserted sample data into both tables to illustrate various healthcare scenarios.

- **Queries**: Developed a range of SQL queries to perform various analyses, including:
  - Retrieving all records and filtering based on different criteria (e.g., age, treatment type, settlement amount).
  - Aggregating data to calculate total settlements by provider, average treatment costs, and more.
  - Joining tables to enrich data with insurance provider information.
  - Calculating key metrics like the difference in age between the youngest and oldest patients, and average settlement amounts per year.

### Tables

#### HealthcareData

This table tracks individual patient records, including personal details, treatment specifics, and financial information related to healthcare settlements.

```sql
CREATE TABLE HealthcareData (
    Patient_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(255),
    Age INT,
    Gender VARCHAR(10),
    Settlement_Date DATE,
    Settlement_Amount DECIMAL(10, 2),
    Healthcare_Provider VARCHAR(255),
    Provider_Location VARCHAR(255),
    Treatment_Type VARCHAR(255),
    Treatment_Start_Date DATE,
    Treatment_End_Date DATE,
    Cost_of_Treatment DECIMAL(10, 2),
    Insurance_Coverage DECIMAL(10, 2),
    Out_of_Pocket_Cost DECIMAL(10, 2),
    Follow_Up_Required VARCHAR(3),
    Follow_Up_Date DATE,
    Treatment_Success VARCHAR(3),
    Additional_Notes TEXT
);
```

#### InsuranceData

This table holds information about insurance providers and their coverage percentages.

```sql
CREATE TABLE InsuranceData (
    Insurance_ID INT PRIMARY KEY,
    Provider_Name VARCHAR(255),
    Coverage_Percentage DECIMAL(5, 2)
);
```

### SQL Queries

- **Retrieve All Records**: Fetch all patient records from the `HealthcareData` table.
  
  ```sql
  SELECT * FROM HealthcareData;
  ```

- **Patients Over 50 Years**: Find patients older than 50.
  
  ```sql
  SELECT * FROM HealthcareData WHERE Age > 50;
  ```

- **Treatments Involving Surgery**: List patients who underwent surgery.
  
  ```sql
  SELECT * FROM HealthcareData WHERE Treatment_Type = 'Surgery';
  ```

- **Count of Male and Female Patients**: Count the number of male and female patients.
  
  ```sql
  SELECT Gender, COUNT(*) AS NumberOfPatients FROM HealthcareData GROUP BY Gender;
  ```

- **Patients Requiring Follow-Up**: Find all patients who required a follow-up.
  
  ```sql
  SELECT * FROM HealthcareData WHERE Follow_Up_Required = 'Yes';
  ```

- **Total Settlement Amount by Provider**: Calculate the total settlement amount by each healthcare provider.
  
  ```sql
  SELECT Healthcare_Provider, SUM(Settlement_Amount) AS TotalSettlementAmount FROM HealthcareData GROUP BY Healthcare_Provider;
  ```

- **Most Common Treatment Type**: Determine the most common type of treatment.
  
  ```sql
  SELECT Treatment_Type, COUNT(*) AS Frequency FROM HealthcareData GROUP BY Treatment_Type ORDER BY Frequency DESC LIMIT 1;
  ```

- **Patients with Successful Treatments**: Retrieve patients with successful treatments.
  
  ```sql
  SELECT * FROM HealthcareData WHERE Treatment_Success = 'Yes';
  ```

- **Average Cost of Treatment by Gender**: Find the average cost of treatment for male and female patients.
  
  ```sql
  SELECT Gender, AVG(Cost_of_Treatment) AS AvgTreatmentCost FROM HealthcareData GROUP BY Gender;
  ```

- **Patients by Provider Location**: List patients grouped by healthcare provider location.
  
  ```sql
  SELECT Provider_Location, COUNT(*) AS NumberOfPatients FROM HealthcareData GROUP BY Provider_Location;
  ```

- **Patients with Highest Out-of-Pocket Costs**: List patients with the highest out-of-pocket costs.
  
  ```sql
  SELECT * FROM HealthcareData ORDER BY Out_of_Pocket_Cost DESC LIMIT 5;
  ```

- **Total Treatment Cost by Settlement Date**: Calculate the total cost of treatment for each settlement date.
  
  ```sql
  SELECT Settlement_Date, SUM(Cost_of_Treatment) AS TotalTreatmentCost FROM HealthcareData GROUP BY Settlement_Date;
  ```

- **Patients Treated in 2022**: Find patients treated between '2022-01-01' and '2022-12-31'.
  
  ```sql
  SELECT * FROM HealthcareData WHERE Treatment_Start_Date BETWEEN '2022-01-01' AND '2022-12-31';
  ```

- **Providers with Multiple Treatment Types**: List healthcare providers who performed more than one type of treatment.
  
  ```sql
  SELECT Healthcare_Provider, COUNT(DISTINCT Treatment_Type) AS NumberOfTreatments FROM HealthcareData GROUP BY Healthcare_Provider HAVING NumberOfTreatments > 1;
  ```

- **Settlement Amount Greater than ₹50,000**: Find providers with a total settlement amount greater than ₹50,000.
  
  ```sql
  SELECT Healthcare_Provider, SUM(Settlement_Amount) AS TotalSettlementAmount FROM HealthcareData GROUP BY Healthcare_Provider HAVING TotalSettlementAmount > 50000;
  ```

- **Average Cost by Treatment Type**: Calculate the average cost of treatment for each treatment type with costs greater than ₹15,000.
  
  ```sql
  SELECT Treatment_Type, AVG(Cost_of_Treatment) AS AvgCost FROM HealthcareData GROUP BY Treatment_Type HAVING AvgCost > 15000;
  ```

- **Number of Patients by Age Group**: Count the number of patients in each age group and display those with more than 10 patients.
  
  ```sql
  SELECT FLOOR(Age/10)*10 AS AgeGroup, COUNT(*) AS NumberOfPatients FROM HealthcareData GROUP BY AgeGroup HAVING NumberOfPatients > 10;
  ```

- **Patients by Settlement Amount**: List patients sorted by settlement amount in descending order.
  
  ```sql
  SELECT Patient_ID, Patient_Name, Settlement_Amount FROM HealthcareData ORDER BY Settlement_Amount DESC;
  ```

- **Top 5 Most Expensive Treatments**: Retrieve the top 5 most expensive treatments based on the cost.
  
  ```sql
  SELECT Patient_ID, Patient_Name, Treatment_Type, Cost_of_Treatment FROM HealthcareData ORDER BY Cost_of_Treatment DESC LIMIT 5;
  ```

- **Patients Needing Follow-Up**: List all patients who require a follow-up, sorted by follow-up date.
  
  ```sql
  SELECT Patient_ID, Patient_Name, Follow_Up_Date FROM HealthcareData WHERE Follow_Up_Required = 'Yes' ORDER BY Follow_Up_Date ASC;
  ```

### Usage

1. **Setup**: Clone the repository and import the SQL files into MySQL Workbench.
2. **Run SQL Queries**: Use the provided queries to explore and analyze the data.
3. **Modify**: Adjust queries or add new data as needed for further analysis.


### Tools Used

- MySQL Workbench

---
