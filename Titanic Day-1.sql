CREATE DATABASE titanic;

USE titanic;

SELECT * FROM titanic;

# Show the unique passenger class in data.
SELECT DISTINCT Pclass FROM titanic;

# EDA - Expolratory Data Analysis
#General overview

#1 How many totl passengers were onboard?
SELECT COUNT(*) As total_passenger FROM titanic;

#2 What percentage of passengers survived vs. did not survive?
SELECT Survived, COUNT(*) AS total_count,
ROUND((COUNT(*) *100 / (SELECT COUNT(*) FROM titanic)),2)
AS percentage 
FROM titanic GROUP BY Survived;

#3 Whats is the distribution of passengers across Pclass (1st, 2nd, 3rd)
SELECT Pclass, COUNT(*) AS total_passenger FROM titanic GROUP BY Pclass ORDER BY Pclass;

#4 How many passengers embarked from each port (Embarked)?
SELECT Embarked, COUNT(*) AS total_passenger FROM titanic GROUP BY Embarked ORDER BY total_passenger;

#5 What is the gender distribution of passsengers?
SELECT Gender, COUNT(*) AS total_gender FROM titanic GROUP BY Gender;

#6 What is the average, minimum and maximum age of passengers?
SELECT ROUND(AVG(Age),0) AS avg_age, 
MIN(Age) AS min_age, 
MAX(Age) AS max_age FROM titanic;

#7 How many childern (Age<18) were on board?
SELECT COUNT(*) AS total_count FROM titanic WHERE age<18;

#8 Compare survival rates of children vs. adults vs. seniors?
SELECT 
CASE WHEN age < 18 THEN 'Child'
WHEN Age BETWEEN 18 AND 50 THEN 'Adult'
ELSE 'Senoir'
END AS age_group,
COUNT(*) AS total_count,
SUM(CASE WHEN Survived = 'Survived' THEN 1 ELSE 0 END)
AS Survived,
ROUND(SUM(CASE WHEN Survived = 'Survived' THEN 1 ELSE 0 END) *100 / COUNT(*),2) AS survival_rate
FROM titanic GROUP BY age_group; 

#9 What is the age distribultion across different passenger classes?
SELECT Pclass,ROUND(AVG(Age),2) AS avg_age,
MIN(Age) AS min_age,
MAX(Age) AS max_age FROM titanic GROUP BY Pclass;

#10 Who were the youngest and oldest survivors?
SELECT Prefix, Name, `Last Name`, Age FROM titanic WHERE Survived = 'Survived' ORDER BY Age ASC LIMIT 2;
SELECT Prefix, Name, `Last Name`, Age FROM titanic WHERE Survived = 'Survived' ORDER BY Age DESC LIMIT 2;

#11 What is the average fare overall?
SELECT ROUND(AVG(Fare),0) AS avg_fare FROM titanic;

#12 Which passenger paid the maximum fare, and what class/port were they in?
SELECT Name, Pclass, Embarked, Fare FROM titanic ORDER BY Fare DESC LIMIT 1;

#13 Compare fare distribution among passenger classes?
SELECT Pclass,ROUND(AVG(Fare),2) AS avg_fare,
MIN(Fare) AS min_fare,
MAX(Fare) AS max_fare FROM titanic GROUP BY Pclass;

#14 Did passengers who paid higher fares have a higher survival rate?
SELECT AVG(fare), min(fare), max(fare) from titanic;
SELECT ROUND(stddev(fare),0) FROM titanic;

SELECT CASE
	WHEN fare >= 50 THEN 'High Fare'
    ELSE 'Low Fare' END AS fare_group,
    COUNT(*) AS total,
SUM(CASE WHEN Survived = 'Survived' THEN 1 ELSE 0 END) AS Survived,
ROUND(SUM(CASE WHEN Survived = 'Survived' THEN 1 ELSE 0 END)* 100 /
COUNT(*),2) AS survival_rate
FROM titanic
GROUP BY fare_group; 

#15 What is the distribution of fares by embarkation port?
SELECT Embarked, ROUND(AVG(fare),0) AS avg_fare,
ROUND(MIN(fare),0) AS min_fare,
ROUND(MAX(fare),0) AS max_fare
FROM titanic GROUP BY Embarked;

#16 What is the survival rate in each class(Pclass)?
SELECT Pclass, COUNT(*) AS total,
SUM(CASE WHEN Survived = 'Survived' THEN 1 ELSE 0 END) AS Survived,
ROUND(SUM(CASE WHEN Survived = 'Survived' THEN 1 ELSE 0 END)* 100 /
COUNT(*),2) AS survival_rate
FROM titanic
GROUP BY Pclass;

#17 Did 1st class passengers survive more compare to 3rd class?


#18 Compare male vs female survival rate within each class?
SELECT Pclass, Gender,
ROUND(SUM(New_survived) * 100 / COUNT(*), 2 )AS survival_rate
FROM titanic
GROUP BY Pclass, Gender
ORDER BY survival_rate DESC;


#19 Which class had the highest average age?
SELECT Pclass, ROUND(AVG(Age),0) AS avg_age FROM titanic GROUP BY Pclass ORDER BY avg_age DESC LIMIT 1;

#20 Was class associated with higher family sizes?
SELECT Pclass, ROUND(AVG(FamilySize),2) AS avg_family_size 
FROM TITANIC
GROUP BY Pclass;


SET SQL_SAFE_UPDATES = 0;

ALTER TABLE titanic ADD COLUMN New_survived INT;

UPDATE titanic SET New_survived = 
CASE WHEN Survived = 'Survived' THEN 1 ELSE 0 END;

SELECT SUM(New_survived) FROM titanic;
SET SQL_SAFE_UPDATES = 1;

# Embarked wise survival rate? 
SELECT Embarked,
ROUND((SUM(New_survived) * 100) / COUNT(*),2) AS survival_rate
FROM titanic
GROUP BY Embarked;












