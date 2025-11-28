CREATE DATABASE Marketing;

USE Marketing;

Select * from marketing;

# 1 Distribution of Customers by Education Level? 
select Education, COUNT(*) As Total_Customer
from marketing
Group By Education
Order By Total_Customer DESC;

# 2 Distribution of Customer by Marital Status?
SELECT Marital_Status, COUNT(*) AS Total_Customer
FROM marketing
GROUP BY Marital_Status
ORDER BY Total_Customer DESC;

# 3 Which countries have the highest number of customers?
SELECT Country, COUNT(*) AS Total_Customer
FROM marketing
GROUP BY Country
ORDER BY Total_Customer DESC;

# 4 What is the average income by Education Level?
SELECT Education , ROUND(AVG(Income),2) AS Avg_income
FROM marketing
GROUP BY Education
ORDER BY Avg_income DESC;

# 5 What is the average income by Marital Status?
SELECT Marital_Status, ROUND(AVG(Income),2) AS Avg_income
FROM marketing
GROUP BY Marital_Status
ORDER BY Avg_income DESC;

# 6 How many customers have 0,1, or more children (kidhome)?
SELECT Kidhome, COUNT(*)AS Total_kidhome
FROM marketing 
GROUP BY Kidhome;

# 7 How many customers have 0,1, or more teenagers (Teenhome)?
SELECT Teenhome, COUNT(*) AS Total_teenhome
FROM marketing
GROUP BY Teenhome;

# 8 Which product category has the highest customer spending (Wines, Fruits, Meat, Fish, Sweets, Gold)?
SELECT 
SUM(MntWines) AS Wines,
SUM(MntFruits) AS Fruits,
SUM(MntMeatProducts) AS Meat,
SUM(MntFishProducts) AS Fish,
SUM(MntSweetProducts) AS Sweet,
SUM(MntGoldProds) AS Gold
FROM marketing;















