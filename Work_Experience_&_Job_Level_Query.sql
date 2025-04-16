--Average Yearly Income by Seniority
SELECT 
  seniority_level      AS Seniority_Level,
  avg(income_per_year) AS Average_Yearly_Income
FROM `optimal-drummer-456022-i4.Attrition_Data.hr_featured`
GROUP BY seniority_level
ORDER BY seniority_level

--Attrition rate for recent hires
-- Answers the question: Are recent hires more likely to leave the company?
SELECT 
  recent_hire                                    AS Recent_Hire,
  ROUND(COUNTIF(Attrition=1) / COUNT(*), 4)*100  AS Attrition_Rate
FROM `optimal-drummer-456022-i4.Attrition_Data.hr_featured`
GROUP BY recent_hire