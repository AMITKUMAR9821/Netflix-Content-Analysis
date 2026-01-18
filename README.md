# Netflix Titles Data Analysis using SQL

## 📌 Project Overview

This project focuses on analyzing the **Netflix Titles dataset** using **SQL** to uncover meaningful insights about Netflix’s content library. The analysis explores content distribution, popular genres, and director contributions to understand Netflix’s overall content strategy.

This project is designed to demonstrate practical SQL skills that are commonly required for **Data Analyst** roles.

---

## 🎯 Objectives

* Analyze the distribution of **Movies vs TV Shows** on Netflix
* Identify the **most common genres** available on the platform
* Examine **director contributions across different genres**
* Practice SQL techniques used in real-world data analysis

---

## 🗂️ Dataset Information

* **Database Name:** `netflix_dbo`
* **Table Used:** `netflix_titles`
* **Key Columns:**

  * `type` – Movie or TV Show
  * `listed_in` – Genre information
  * `director` – Director name

The dataset contains metadata about Netflix titles, including genre, director, and content type.

---

## 🛠️ Tools & Technologies

* **SQL** (MySQL / SQL Server compatible)
* Relational database concepts

---

## 🧠 Approach & Methodology

The analysis was performed using core SQL concepts:

* `SELECT` statements to explore the dataset
* `GROUP BY` and `COUNT()` for aggregations
* Subqueries to calculate percentages
* `ORDER BY` and `TOP` to rank results
* `WHERE` clauses to filter null or irrelevant data
* **Common Table Expressions (CTEs)** to simplify complex queries

---

## 🔍 Key Analysis Performed

### 1️⃣ Content Distribution (Movies vs TV Shows)

Calculated the percentage share of Movies and TV Shows by grouping the data by content type and dividing it by the total number of titles.

**Insight:** Helps understand Netflix’s focus on different content formats.

---

### 2️⃣ Most Common Genres

Identified the top genres by grouping titles based on genre (`listed_in`) and ranking them by frequency.

**Insight:** Reveals the most dominant content categories on Netflix.

---

### 3️⃣ Director Contribution by Genre

Used a **CTE** to analyze which directors have produced the most content within specific genres. Records with missing values were filtered to ensure accuracy.

**Insight:** Highlights director specialization and major contributors on the platform.

---

## 📈 Key Learnings

* Netflix has a clear pattern in content type distribution
* Certain genres dominate the platform’s content library
* SQL CTEs significantly improve readability for complex analysis

---

## ✅ Conclusion

This project demonstrates how SQL can be used to analyze real-world datasets and extract actionable insights. It strengthened my skills in **data aggregation, filtering, subqueries, CTEs, and analytical problem-solving**, making it highly relevant for entry-level data analyst roles.

---

## 📄 Project Files

* `Netflix titles analysis.sql` – SQL queries used for analysis

---

## 👤 Author

**Amit Kumar**
Aspiring Data Analyst

---

⭐ If you find this project useful, feel free to star the repository!
