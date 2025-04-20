--Find the education field with the highest attrition rate and average age of employees who left
SELECT 
  e.EducationField,
  ROUND(COUNTIF(a.Attrition=1)/COUNT(*), 2)*100  AS Attrition_Rate,
  FLOOR(AVG(e.age))                              AS Average_Age
FROM 
  `optimal-drummer-456022-i4.Attrition_Data.Employee_Details` e
JOIN
  `optimal-drummer-456022-i4.Attrition_Data.attrition_status` a
ON
  e.EmployeeNumber = a.EmployeeNumber
GROUP BY e.EducationField
ORDER BY Attrition_Rate desc;

--Calculate average monthly income by field of education and gender
SELECT 
  e.Gender,
  FLOOR(AVG(c.MonthlyIncome)) AS Avg_Income,
  e.EducationField
FROM
  `optimal-drummer-456022-i4.Attrition_Data.Employee_Details` e
JOIN
  `optimal-drummer-456022-i4.Attrition_Data.compensation` c
ON
  e.EmployeeNumber = c.EmployeeNumber
GROUP BY 
  e.EducationField, e.Gender
ORDER BY
  e.EducationField, e.Gender;

--Identify the job role and education level combinations with the highest attrition rates
SELECT
  j.JobRole,
  e.Education,
  ROUND(COUNTIF(a.Attrition = 1) / COUNT(*), 2) * 100 AS Attrition_Rate
FROM
  `optimal-drummer-456022-i4.Attrition_Data.attrition_status` a
JOIN
  `optimal-drummer-456022-i4.Attrition_Data.Employee_Details` e
ON
  a.EmployeeNumber = e.EmployeeNumber
JOIN
  `optimal-drummer-456022-i4.Attrition_Data.job_info` j
ON
  e.EmployeeNumber = j.EmployeeNumber
GROUP BY
  j.JobRole, e.Education
ORDER BY
  Attrition_Rate DESC;

--Attrition Rate based on Income buckets
SELECT
  CASE 
    WHEN j.income_per_year <= 125000 THEN 'Low'
    WHEN j.income_per_year <= 225000 THEN 'Medium'
    ELSE 'High'
  END AS income_bucket,
  ROUND(COUNTIF(a.Attrition = 1) / COUNT(*), 4) * 100 AS attrition_rate
FROM
  `optimal-drummer-456022-i4.Attrition_Data.compensation` j
JOIN
  `optimal-drummer-456022-i4.Attrition_Data.attrition_status` a
ON
  j.EmployeeNumber = a.EmployeeNumber
GROUP BY
  income_bucket
ORDER BY
  attrition_rate DESC;

--Compare attrition across different job satisfaction and work-life balance categories
SELECT 
  p.JobSatisfaction,
  p.WorkLifeBalance,
  ROUND(COUNTIF(a.Attrition = 1) / COUNT(*), 2) * 100 AS attrition_rate
FROM
  `optimal-drummer-456022-i4.Attrition_Data.performance_reviews` p
JOIN
  `optimal-drummer-456022-i4.Attrition_Data.attrition_status` a
ON
  p.EmployeeNumber = a.EmployeeNumber
GROUP BY
  p.JobSatisfaction,
  p.WorkLifeBalance
ORDER BY
  p.JobSatisfaction,
  p.WorkLifeBalance;

--Identify departments with high attrition and find out the average performance ratings
SELECT
  j.Department,
  FLOOR(AVG(p.PerformanceRating))                     AS Avg_Performance,
  ROUND(COUNTIF(a.Attrition = 1) / COUNT(*), 2) * 100 AS attrition_rate
FROM
  `optimal-drummer-456022-i4.Attrition_Data.job_info` j
JOIN
  `optimal-drummer-456022-i4.Attrition_Data.performance_reviews` p
ON j.EmployeeNumber = p.EmployeeNumber
JOIN
  `optimal-drummer-456022-i4.Attrition_Data.attrition_status` a
ON 
  p.EmployeeNumber= a.EmployeeNumber
GROUP BY
  j.Department;


