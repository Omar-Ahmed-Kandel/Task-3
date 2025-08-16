# 🎵 Music Store Sales Analysis (Chinook Database)

## 📌 Introduction
This project analyzes the **Chinook music store database**, focusing on sales performance, customer behavior, and product trends.  
SQL queries were used to extract insights on **revenue, top products, and customer spending**.

---

## 📚 Table of Contents
1. [Executive Summary](#-executive-summary)
2. [Objectives & Key Questions](#-objectives--key-questions)
3. [Data Preparation](#-data-preparation)
4. [Key Measures & KPIs](#-key-measures--kpis)
5. [Insights & Recommendations](#-insights--recommendations)
6. [Limitations](#-limitations)
7. [Next Steps & Decisions](#-next-steps--decisions)
8. [Dataset](#-dataset)

---

## 📊 Executive Summary
The analysis highlights **top-selling tracks**, **revenue distribution by country**, **monthly revenue patterns**, and **high-value customers**.  

Window functions provide additional insights through **ranking** and **ordering** of customer spending and track genres.  
These findings help identify growth opportunities and optimize customer engagement strategies.

---

## 🎯 Objectives & Key Questions
- What are the **top-selling tracks**?  
- Which **countries contribute the most revenue**?  
- How does **monthly revenue trend over time**?  
- Who are the **highest-spending customers**?  
- How can **window functions** (`RANK`, `ROW_NUMBER`) provide deeper insights?  

---

## 🛠 Data Preparation
- **Data Source**: Queried directly from the **Chinook relational database**.  
- **Key Tables Used**: `Invoice`, `InvoiceLine`, `Customer`, `Track`, and `Genre`.  
- **Transformations Applied**:  
  - SQL **JOINs**, **aggregations**, and **window functions** (`RANK`, `ROW_NUMBER`).  
  - Dates formatted with `DATE_FORMAT()` for **monthly analysis**.  

---

## 📐 Key Measures & KPIs
- **Top-Selling Products** → Total units sold per track  
- **Revenue by Country** → `SUM(Total)` grouped by `BillingCountry`  
- **Monthly Revenue** → `SUM(Total)` aggregated by month  
- **Customer Ranking** → Purchases per customer ranked using `RANK()`  
- **Genre Listing** → `ROW_NUMBER()` to order tracks within each genre  

---

## 🔎 Insights & Recommendations
- 🎶 **Top-Selling Products**: A few tracks dominate sales, reflecting customer preference for specific songs.  
- 🌍 **Revenue by Country**: Certain countries generate more revenue, highlighting strong regional markets.  
- 📅 **Monthly Revenue**: Fluctuations suggest seasonal demand or promotional impacts.  
- 👤 **Customer Spending**: High-value customers should be targeted with loyalty programs and special offers.  
- 🎼 **Genre Distribution**: Row numbers help structure catalog offerings and track diversity across genres.  

---

## ⚠️ Limitations
- Analysis limited to **available Chinook dataset**.  
- May not fully reflect **real-world business trends** (sample dataset).  
- No advanced **statistical forecasting** included.  

---

## 🚀 Next Steps & Decisions
- Expand analysis with **customer segmentation** and **purchase frequency** metrics.  
- Explore **cross-sell opportunities** (tracks → albums/artists).  
- Apply **predictive modeling** for monthly revenue forecasting.  
- Build a **dashboard in Power BI/Tableau** for real-time monitoring.  


---

## 📂 Dataset
- Chinook Database: [Chinook SQL Database](https://github.com/Omar-Ahmed-Kandel/Task-3/blob/main/chinook.db)  

