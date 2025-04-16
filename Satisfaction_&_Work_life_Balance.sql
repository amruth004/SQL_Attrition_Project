--Attrition Rate based on Job Satisfaction
SELECT
  job_satisfaction_label                        AS Job_Satisfaction,
  ROUND(COUNTIF(Attrition=1)/ COUNT(*), 4)*100  AS Attrition_Rate
FROM `optimal-drummer-456022-i4.Attrition_Data.hr_featured`
GROUP BY job_satisfaction_label
ORDER BY Attrition_Rate

--Attrition Rate based on Work Life Balance
SELECT
  work_life_balance_label                       AS Work_Life_Balance,
  ROUND(COUNTIF(Attrition=1)/ COUNT(*), 4)*100  AS Attrition_Rate
FROM `optimal-drummer-456022-i4.Attrition_Data.hr_featured`
GROUP BY Work_Life_Balance
ORDER BY Attrition_Rate
