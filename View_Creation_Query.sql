CREATE OR REPLACE VIEW `optimal-drummer-456022-i4.Attrition_Data.hr_featured` AS
SELECT
  *,  -- Select all existing columns
  -- Income per year of experience
  SAFE_DIVIDE(MonthlyIncome * 12, NULLIF(TotalWorkingYears, 0)) AS income_per_year,

  -- Age Bucket
  CASE 
    WHEN Age < 30 THEN 'Young'
    WHEN Age BETWEEN 30 AND 50 THEN 'Mid-age'
    ELSE 'Senior'
  END AS age_bucket,

  -- Distance Category
  CASE 
    WHEN DistanceFromHome <= 5 THEN 'Near'
    WHEN DistanceFromHome <= 15 THEN 'Moderate'
    ELSE 'Far'
  END AS distance_category,

  -- Seniority Level from JobLevel
  CASE 
    WHEN JobLevel = 1 THEN 'Junior'
    WHEN JobLevel = 2 THEN 'Mid'
    ELSE 'Senior'
  END AS seniority_level,

  -- Recently joined employees
  IF(YearsAtCompany <= 1, 1, 0) AS recent_hire,

  -- High Travel indicator
  IF(BusinessTravel = 'Travel_Frequently', 1, 0) AS high_travel,

  -- Work-Life Balance label
  CASE 
    WHEN WorkLifeBalance = 1 THEN 'Bad'
    WHEN WorkLifeBalance = 2 THEN 'Average'
    WHEN WorkLifeBalance = 3 THEN 'Good'
    WHEN WorkLifeBalance = 4 THEN 'Excellent'
  END AS work_life_balance_label,

  -- Job Satisfaction label
  CASE 
    WHEN JobSatisfaction = 1 THEN 'Low'
    WHEN JobSatisfaction = 2 THEN 'Medium'
    WHEN JobSatisfaction = 3 THEN 'High'
    WHEN JobSatisfaction = 4 THEN 'Very High'
  END AS job_satisfaction_label

FROM `optimal-drummer-456022-i4.Attrition_Data.IBM_Attrition_Data`;
