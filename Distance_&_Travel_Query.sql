--Attrtion Rate Based on Distance Category
SELECT 
  distance_category                              AS Distance_category,
  ROUND(COUNTIF(Attrition=1) / COUNT(*), 4)*100  AS Attrition_Rate
FROM `optimal-drummer-456022-i4.Attrition_Data.hr_featured`
GROUP BY distance_category
ORDER BY Attrition_Rate

--Attrition Rate based on travel frequency
SELECT 
  high_travel                                    AS High_Travel_Frequency,
  ROUND(COUNTIF(Attrition=1) / COUNT(*), 4)*100  AS Attrition_Rate
FROM `optimal-drummer-456022-i4.Attrition_Data.hr_featured`
GROUP BY high_travel
ORDER BY Attrition_Rate

