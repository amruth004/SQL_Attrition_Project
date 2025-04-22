# 📊 IBM HR Analytics Employee Attrition Project

This project explores employee attrition trends using the IBM HR Analytics dataset. It showcases my SQL skills through structured data modeling, insightful queries, and dashboarding — all handled via **Google BigQuery** and **Looker Studio**.

---

## 🧰 Tools & Technologies Used

- **Google BigQuery** – SQL querying and data warehousing  
- **Google Cloud Platform (GCP)** – Dataset hosting  
- **Excel** – Initial data cleaning  
- **Git & GitHub** – Version control  
- **Looker Studio** – Data visualization and dashboarding  

---

## 🧹 Data Preparation

Initial cleaning was performed in Excel to handle missing values, remove duplicates, and format data types. The cleaned dataset was then uploaded to BigQuery for further analysis.

---

## ⚙️ Feature Engineering

I created an **overall view** named `hr_featured`, which includes engineered features derived from the original data. These additional features enriched the analysis and made complex queries easier to manage.

**Key Engineered Features:**

- `income_per_year` - used monthly income to calculate 
- `age_bucket` – Categorized employee ages (e.g., 20-30, 31-40)  
- `distance_category` – Buckets travel distance into Near, Medium, Far
- `seniority_level` - Categorized employees based on their work experience  
- `income_level` – Annual income grouped into Low, Medium, and High  
- `recent_hire` – Flag for employees hired within the last 3 years  
- `high_travel` – Categorized employees based on their travel frequency  
- `satisfaction_level` – CASE-based satisfaction categorization  

These features were used consistently across all advanced SQL queries.

---

## 🧱 Data Modeling

To structure the data for better querying, I created modular SQL **views** from the , each focusing on a specific theme:

- `Employee_Details` – demographic info with custom fields  
- `Attrition_status` – attrition flag and hiring details  
- `Job_Info` – income, job role, travel, and department  
- `Performance_reviews` – job satisfaction and involvement  
- `Compensation` – employee salary details  

---

## 🧠 SQL Analysis Overview

The project involves a mix of **basic** and **advanced SQL queries** that:

- Analyze attrition trends across age, education, department, etc.  
- Use **JOINs** to combine insights across views  
- Apply **CASE** statements for feature bucketing  
- Use **UNION** to combine multiple filtered subsets  
- Leverage **aggregations, filters, and groupings** for insights  

These queries demonstrate practical, real-world SQL proficiency.

---

## 📊 Dashboard

The final dashboard was created using **Looker Studio**, visualizing key metrics such as:

- Attrition breakdown by age, role, education, and job satisfaction  
- Performance and work-life balance trends  
- Income levels vs attrition  
- Travel and distance correlations  

🔗 *https://lookerstudio.google.com/reporting/76e658f0-2ef6-49de-b46f-27a37c57674a*

---

## ✅ Key Takeaways

- Strong hands-on experience with **modular SQL querying**  
- Created reusable **views** and engineered **custom features**  
- Demonstrated ability to extract actionable insights from data  
- Built an interactive **dashboard** to summarize findings  
- Applied concepts like **joins, views, case statements, and unions** effectively

---

## 📫 Connect

Feel free to reach out on [LinkedIn]https://www.linkedin.com/in/amruth-sarvanan-6603aa243/ or connect if you'd like to discuss this project or potential collaborations.

---
