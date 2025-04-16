--Attrition Rate
SELECT 
  COUNTIF(Attrition=1) AS Employees_Left,
  COUNT(*) AS Total_Employees,
  ROUND(COUNTIF(Attrition=1)/COUNT(*),4)*100 AS Attrition_Rate
FROM `optimal-drummer-456022-i4.Attrition_Data.hr_featured`

--Attrition Rate across different age buckets
SELECT
  age_bucket,
  ROUND(COUNTIF(Attrition=1)/COUNT(*),4)*100 AS Attrition_Rate 
FROM `optimal-drummer-456022-i4.Attrition_Data.hr_featured`
GROUP BY age_bucket

--Departments with the highest attrition rate
SELECT
  Department,
  ROUND(COUNTIF(Attrition=1)/COUNT(*),4)*100 AS Attrition_Rate 
FROM `optimal-drummer-456022-i4.Attrition_Data.hr_featured`
GROUP BY Department
ORDER BY Attrition_Rate desc
