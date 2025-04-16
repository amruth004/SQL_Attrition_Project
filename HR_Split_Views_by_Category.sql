-- Basic personal information and demographics of employees
CREATE OR REPLACE VIEW `optimal-drummer-456022-i4.Attrition_Data.Employee_Details` AS
SELECT 
  EmployeeNumber,
  Age,
  Gender,
  EducationField,
  Education,
  MaritalStatus,
  age_bucket,
  distance_category
FROM `optimal-drummer-456022-i4.Attrition_Data.hr_featured`;

-- Job-related attributes like department, role, and seniority level
CREATE OR REPLACE VIEW `optimal-drummer-456022-i4.Attrition_Data.job_info` AS
SELECT 
  EmployeeNumber,
  JobRole,
  JobLevel,
  Department,
  BusinessTravel,
  seniority_level,
  recent_hire,
  high_travel
FROM `optimal-drummer-456022-i4.Attrition_Data.hr_featured`;

-- Compensation details including monthly income and income per year
CREATE OR REPLACE VIEW `optimal-drummer-456022-i4.Attrition_Data.compensation` AS
SELECT 
  EmployeeNumber,
  MonthlyIncome,
  income_per_year
FROM `optimal-drummer-456022-i4.Attrition_Data.hr_featured`;

-- Includes employee experience metrics and satisfaction-related scores
CREATE OR REPLACE VIEW `optimal-drummer-456022-i4.Attrition_Data.performance_reviews` AS
SELECT 
  EmployeeNumber,
  JobSatisfaction,
  job_satisfaction_label,
  WorkLifeBalance,
  work_life_balance_label,
  PerformanceRating,
  EnvironmentSatisfaction,
  YearsAtCompany,
  YearsInCurrentRole
FROM `optimal-drummer-456022-i4.Attrition_Data.hr_featured`;

-- Attrition Status of each Employee
CREATE OR REPLACE VIEW `optimal-drummer-456022-i4.Attrition_Data.attrition_status` AS
SELECT 
  EmployeeNumber,
  Attrition
FROM `optimal-drummer-456022-i4.Attrition_Data.hr_featured`;




