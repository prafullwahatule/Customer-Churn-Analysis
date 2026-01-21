# 📊 Customer Churn Analysis Dashboard

**Repository:** https://github.com/prafullwahatule/Customer-Churn-Analysis

---

## 🚀 Project Overview

The **Customer Churn Analysis Dashboard** project focuses on analyzing large-scale customer data to identify churn patterns, high-risk customer segments, and key retention drivers. The goal is to enable data-driven decision-making by delivering actionable insights through exploratory analysis, automated reporting, and interactive dashboards.
This project focuses on analyzing large-scale customer data to identify churn patterns, high-risk customer segments, and key retention drivers. The goal is to enable data-driven decision-making by delivering actionable insights through automated reporting and interactive dashboards.

The dataset (**4.4L+ records**) used in this project is sourced from **Kaggle** and was ingested into **MySQL** for reporting and analytical processing.

- Collected, cleaned, and transformed 1.9L+ customer transaction records from MySQL for analytical reporting.

- Performed Exploratory Data Analysis (EDA) using Python to uncover churn drivers, behavioral trends, and customer risk segments.

- Designed and developed interactive Power BI dashboards to monitor churn trends, retention KPIs, cohort analysis, and customer segmentation.

- Built advanced DAX measures to calculate churn rate, customer lifetime value (CLV), retention percentage, and time-based metrics.

- Automated monthly churn reporting using Python scripts and SQL, reducing manual reporting efforts by approximately 25%.

- Optimized data models and DAX calculations to improve dashboard performance and refresh efficiency.

- Delivered actionable insights to marketing and customer success teams, supporting effective retention strategies and business decisions.

---

## 🎯 Business Objective

Customer churn directly impacts revenue and organizational growth.  
**Objective:** Understand why customers leave (churn), identify patterns and segments at risk, and empower business teams with insights and automated reporting to improve retention strategies.

---

## 📁 Repository Structure
```
Customer-Churn-Analysis Dashboard/
│
├── 1_data/
│ ├── raw/
│ │ └── customer_churn_raw.csv
│ │
│ ├── processed/
│ │ └── customer_churn_cleaned.csv
│ │
│ └── data_dictionary/
│ └── data_dictionary.xlsx
│
├── 2_sql/
│ ├── schema/
│ │ └── create_tables.sql
│ │
│ ├── data_load/
│ │ └── load_data.sql
│ │
│ ├── eda_queries/
│ │ └── churn_analysis.sql
│ │
│ └── reporting_queries/
│ └── churn_kpis.sql
│
├── 3_python/
│ ├── notebooks/
│ │ ├── 01_data_cleaning.ipynb
│ │ ├── 02_eda.ipynb
│ │ ├── 03_churn_driver_analysis.ipynb
│ │ └── 04_feature_engineering.ipynb
│ │
│ ├── scripts/
│ │ └── monthly_churn_report.py
│ │
│ └── utils/
│ └── helper_functions.py
│
├── 4_power_bi/
│ ├── datasets/
│ │ └── churn_model.pbix
│ │
│ ├── dax_measures/
│ │ └── churn_dax_measures.txt
│ │
│ └── exports/
│ ├── churn_dashboard.pdf
│ └── churn_dashboard_images/
│
├── 5_automation/
│ ├── scheduler/
│ │ └── task_scheduler_notes.txt
│ │
│ └── logs/
│ └── automation_logs.txt
│
├── 6_insights/
│ ├── key_findings.md
│ ├── churn_drivers.md
│ └── recommendations.md
│
├── 7_documentation/
│ ├── project_overview.md
│ ├── data_pipeline.md
│ ├── dashboard_design.md
│ └── business_impact.md
│
├── 8_presentation/
│ └── Customer_Churn_Analysis_Presentation.pptx
│
├── requirements.txt
├── README.md
└── .gitignore

```


---

## 🧰 Tools & Technologies

| Category | Tools |
|----------|-------|
| Data Storage & SQL | MySQL |
| Analytics & Data Processing | Python (Pandas, NumPy, Matplotlib, Seaborn) |
| Dashboard & Reporting | Power BI (DAX, Data Modeling) |
| Automation | Windows Task Scheduler |
| Documentation | Excel, Markdown |

---

## 📊 Data Pipeline

### 🔹 Data Source
Raw customer churn data was provided in CSV format from Kaggle and stored in the `1_data/raw` directory.

### 🔹 Processing Steps
- Raw data was ingested and stored in MySQL.
- Data cleaning & preprocessing using Python:
  - Handling data types & missing values
  - Validating churn values
- Cleaned data saved in `1_data/processed`

---

## 🧠 Analytics & Reporting

### 🔹 SQL Layer
- Database tables created using SQL schema scripts.
- Data loaded and transformed for analysis and KPI reporting.
- SQL queries designed for churn metrics and segment analysis.

### 🔹 Python Analysis
- Used Python for exploratory data analysis (EDA).
- Identified churn drivers and risk factors.
- Performed feature engineering for churn insights.

### 🔹 Power BI Dashboard
- Developed interactive dashboard with multiple report pages.
- Built advanced DAX measures to compute churn rate, retention, CLV, and risk metrics.
- Optimized model performance and refresh efficiency.

---

## 📈 Dashboard Design

### 🗂 Pages Overview
- **Home** — Overview and navigation  
- **Executive Summary** — Top-level KPIs  
- **Churn Trends** — Time-series analysis  
- **Customer Segmentation** — Risk & behavior segments  
- **Churn Drivers** — Behavioral drivers and patterns  
- **Insights & Recommendations** — Business-focused takeaways  


### 🎨 Design Principles
- Interactive filter-based navigation  
- KPI-first layout for business decision-making  
- Consistent visual encoding and color use  

---

## 💡 Key Findings

### 🔍 Overall Insights
- Churn remains a significant challenge with varied patterns across segments.
- Customers on premium plans show better retention.

### 📊 Behavior Insights
- High support calls indicate dissatisfaction & increase churn risk.
- Late payments strongly correlate with churn behavior.
- Low platform usage results in early churn.

### ⚠️ Risk Groups
High-risk customers were identified using combined risk factors:

- Support Calls ≥ 5  
- Payment Delays ≥ 15 days  
- Usage Frequency ≤ 5  

---

## 🧩 Churn Drivers

- **High Support Dependency** — Poor customer satisfaction.  
- **Frequent Payment Delays** — Weak purchase commitment.  
- **Low Usage Frequency** — Weak engagement and product value.  
- **Subscription Type Impact** — Basic-tier churn higher than premium.  
- **Combined Risk Impact** — Several risk factors increase churn probability.  

---

## 📊 DAX Measures (Highlights)

Here are a few key DAX measures from the project:

### 🔹 Total Customers
```dax
Total Customers = CALCULATE(DISTINCTCOUNT('Customer Churn'[customer_id]), REMOVEFILTERS('Customer Churn'[churn]))
```

🔹 Churn Rate
```dax
Churn Rate = DIVIDE([Churned Customers], [Total Customers])
```

🔹 Retention Rate
```dax
Retention Rate = 1 - [Churn Rate]
```

🔹 High-Risk Customers
```dax
High Risk Customers =
CALCULATE(
    DISTINCTCOUNT('Customer Churn'[customer_id]),
    'Customer Churn'[support_calls] >= 5,
    'Customer Churn'[payment_delay] >= 15,
    'Customer Churn'[usage_frequency] <= 5
)
```

## ⚙️ Automation  

- Monthly churn reporting automated using Python.

- Execution scheduled via Windows Task Scheduler.

- Reduced manual reporting time by ~25%.

## 📌 How to Run This Project
1. Clone Repository
```
git clone https://github.com/prafullwahatule/Customer-Churn-Analysis
```
3. Install Dependencies
```
pip install -r requirements.txt
```
3. Load Data in MySQL

- Run create_tables.sql & load_data.sql.

4. Run Python Notebooks

- Open notebooks for cleaning, EDA, and analysis (*.ipynb)

5. Open Dashboard

- Open the Power BI file churn_model.pbix

6. Automation

- Configure Windows Task Scheduler to run monthly_churn_report.py

---

## 🧠 Business Impact
1. 📉 Operational

- Consistent automated reporting

- Reduced manual efforts & errors

2. 📊 Strategic

- Improved retention strategies

- Identified priority customer segments

- Helps maximize Customer Lifetime Value (CLV)

## 📈 Future Enhancements

✔ Build Predictive Machine Learning churn model
✔ Real-time dashboard refresh via streaming data
✔ Alerting system for high-risk customer events
✔ Deploy dashboard to Power BI Service
