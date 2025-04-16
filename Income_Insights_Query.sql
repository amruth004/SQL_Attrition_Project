--Comparison of Income Between Employees Who Stayed and Those Who Left
SELECT
  Attrition,
  FLOOR(AVG(MonthlyIncome))   AS Average_Monthly_Income,
  FLOOR(AVG(income_per_year)) AS Average_Yearly_Income
FROM `optimal-drummer-456022-i4.Attrition_Data.hr_featured`
GROUP BY Attrition
