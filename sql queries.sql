CREATE DATABASE HR_ANALYTICS;
SHOW TABLES;

#1. Total Employees
SELECT COUNT(*) AS Total_Employees
FROM  HR_ANALYTICS.hr_data;

#2. Attrition Count
SELECT COUNT(*) AS Attrition_Count
FROM HR_ANALYTICS.hr_data
WHERE Attrition = 'Yes';

#3. Department-wise Employees
SELECT Department,
       COUNT(*) AS Employee_Count
FROM HR_ANALYTICS.hr_data
GROUP BY Department;

#4. Gender Distribution
SELECT Gender,
       COUNT(*) AS Employee_Count
FROM HR_ANALYTICS.hr_data
GROUP BY Gender;

#5. Average Salary
SELECT ROUND(AVG(MonthlyIncome),2) AS Avg_Salary
FROM HR_ANALYTICS.hr_data;
