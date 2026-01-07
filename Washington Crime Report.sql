CREATE DATABASE washington;

USE washington;

select * from `washington crime report`;

# 1 What is the distribution of crimes by offensegroup (property/violent)?
SELECT offensegroup, COUNT(*) AS Total_offensegrop
FROM `washington crime report`
GROUP BY offensegroup;

# 2 Which OFFENSE types occur most frequently?
SELECT OFFENSE, COUNT(*) AS Total_offense
FROM `washington crime report`
GROUP BY OFFENSE;

# 3 How many crimes occurred in each SHIFT?
SELECT SHIFT, COUNT(*) AS Total_shift
FROM `washington crime report`
GROUP BY SHIFT
ORDER BY Total_shift DESC;

# 4 What is the monthly/weekly/date-wise trend of crimes?
SELECT REPORT_DATE, COUNT(*) Total_dates
FROM `washington crime report`
GROUP BY REPORT_DATE;

# 5 What are the top 10 crime types by ucr-rank?
SELECT OFFENSE, `ucr-rank`
FROM `washington crime report`
ORDER BY `ucr-rank` DESC LIMIT 10;

# 6 Which NEIGHBORHOOD_CLUSTER has the highest number of crimes?
SELECT NEIGHBORHOOD_CLUSTER, COUNT(*) AS TOTAL_Neighborhood
FROM `washington crime report`
GROUP BY NEIGHBORHOOD_CLUSTER
ORDER BY TOTAL_Neighborhood DESC LIMIT 10;

# 7 Which PSA reports the most incidents?
SELECT PSA_Group, COUNT(*) Total_psa_group
FROM `washington crime report`
GROUP BY PSA_Group;

# 8. Which DISTRICT (1D, 3D, 4D,etc.) has the highest crime?
SELECT District_Label, COUNT(*) Total_district_label
FROM `washington crime report`
GROUP BY District_Label;

# 9. Which ANC has the highest crime counts?
SELECT ANC, COUNT(*) Total_anc
FROM `washington crime report`
GROUP BY ANC
ORDER BY Total_anc DESC LIMIT 10;

# 10. Which WARD experiences the most crime?
SELECT Ward_Name, COUNT(*) AS Total_ward_name
FROM `washington crime report`
GROUP BY Ward_Name
ORDER BY Total_ward_name DESC;

# 11. How many crimes involved Weapons vs 'Others'(METHOD)?
SELECT METHOD_FLAG, COUNT(*) AS Total_method
FROM `washington crime report`
GROUP BY METHOD_FLAG;

# 12. What is the hourly trend of crimes based on START_DATE time?
SELECT START_DATE, COUNT(*) AS Total_start_date
FROM `washington crime report`
GROUP BY START_DATE;

# 13. How long do incidents last (END_DATE - START_DATE)? (Duration Distribution)
SELECT Incident_Duration_Minutes, COUNT(*) AS Total_minutes
FROM `washington crime report`
GROUP BY Incident_Duration_Minutes
ORDER BY Total_minutes DESC LIMIT 15;

# 14 Which streets or blocks(BLOCK column) show repeated crimes?
SELECT BLOCK, COUNT(*) AS Total_block
FROM `washington crime report`
GROUP BY BLOCK
ORDER BY Total_block DESC LIMIT 10;

# 15 Which geographic areas show clusters of crimes?
SELECT Lat_Rounded, CCN
FROM `washington crime report`
ORDER BY CCN DESC LIMIT 10;































