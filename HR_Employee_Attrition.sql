CREATE DATABASE HR_Employee_Attrition;

USE HR_Employee_Attrition;

#1. What is the overall employee attrition rate?
SELECT `Attrition Count`, COUNT(*) AS Total_Attrition_rate
FROM hr_data GROUP BY `Attrition Count`;

#2. How does attrition vary accross departments?
SELECT Department,COUNT(*) AS Attrition_Count
FROM hr_data
GROUP BY Department
ORDER BY Attrition_Count DESC;

#3. Which job roles have the highest attrition?
SELECT JobRole,COUNT(*) AS Attrition_Count
FROM hr_data
GROUP BY JobRole
ORDER BY Attrition_Count DESC;

#4. How does attrition change across different age groups?
SELECT `Age Group`,COUNT(*) AS Total_age_group
FROM hr_data
GROUP BY `Age Group`
ORDER BY `Age Group` ASC;

#5. Is there a difference in attrition between male and female employees?
SELECT Gender, COUNT(*) AS Total_Gender
FROM hr_data
GROUP BY Gender;

#6. How does job satisfaction impact employee attrition?
SELECT JobSatisfaction, COUNT(*) AS Attrition_Count
FROM hr_data
GROUP BY JobSatisfaction
ORDER BY Attrition_Count DESC;

#7. What is the relationship between work-life balance and attrition?
SELECT WorkLifeBalance,COUNT(*) AS Attrition_Count
FROM hr_data
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance DESC;

#8. Does environment satisfaction influence attrition rate?
SELECT EnvironmentSatisfaction,COUNT(*) AS Attrition_Count
FROM hr_data
GROUP BY EnvironmentSatisfaction
ORDER BY EnvironmentSatisfaction DESC;

#9. How does job involvement affect employee attrition?
SELECT JobInvolvement,COUNT(*) AS Attrition_Count
FROM hr_data
GROUP BY JobInvolvement
ORDER BY Attrition_Count DESC;

#10. Which satisfaction factor has the strongest correlation with attrition?
SELECT SUM(EnvironmentSatisfaction), SUM(JobSatisfaction), SUM(RelationshipSatisfaction)
FROM hr_data
WHERE Attrition = "Yes";

#11. Is there a significant difference in average monthly income between attrition and non-attrition employees?
SELECT Attrition,AVG(MonthlyIncome) AS avg_monthly_income
FROM hr_data
GROUP BY Attrition;

#12. How does education level impact attrition and average income?
SELECT Education,ROUND(AVG(MonthlyIncome), 2) AS avg_monthly_income
FROM hr_data
GROUP BY Education
ORDER BY Education;

#13. Are high-performing employees more likely to leave the organization?
SELECT Attrition,ROUND(AVG(MonthlyIncome), 2) AS avg_income
FROM hr_data
WHERE PerformanceRating = 4
GROUP BY Attrition;

#14. How many years at company influence attrition trends?
SELECT YearsAtCompany,COUNT(*) AS total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),2) AS attrition_rate
FROM hr_data
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;

#15. Does time since last promotion affect attrition?
SELECT YearsSinceLastPromotion,
ROUND(AVG(MonthlyIncome), 2) AS avg_monthly_income,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),2) AS attrition_rate
FROM hr_data
GROUP BY YearsSinceLastPromotion;

#16. How does distance from home impact attrition across job role?
SELECT JobRole,ROUND(AVG(DistanceFromHome), 2) AS avg_distance,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),2) AS attrition_rate
FROM hr_data
GROUP BY JobRole
ORDER BY attrition_rate DESC;

#17. Which job roles experience high attrition despite higher salaries?
SELECT JobRole,
ROUND(AVG(MonthlyIncome), 2) AS avg_monthly_income,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),2) AS attrition_rate
FROM hr_data
GROUP BY JobRole
HAVING AVG(MonthlyIncome) > (SELECT AVG(MonthlyIncome) FROM hr_data)
ORDER BY attrition_rate DESC;

#18. Does overtime work increase the likelihood of attrition?
SELECT OverTime,COUNT(*) AS total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),2) AS attrition_rate
FROM hr_data
GROUP BY OverTime;

#19. What combination of factors leads to the highest attrition risk?
SELECT OverTime,JobSatisfaction,WorkLifeBalance,YearsAtCompany,
COUNT(*) AS total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),2) AS attrition_rate
FROM hr_data
GROUP BY OverTime, JobSatisfaction, WorkLifeBalance, YearsAtCompany
ORDER BY attrition_rate DESC LIMIT 1;
















































