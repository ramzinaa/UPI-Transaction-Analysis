# UPI Transaction Analysis Dashboard

## 📌 Project Overview

The **UPI Transaction Analysis Dashboard** is an end-to-end data analytics project built to analyze **250,000 UPI transactions** and identify transaction trends, payment behavior, transaction performance, and potential fraud patterns.

The project combines **MySQL for data storage and SQL analysis** with **Power BI for interactive dashboarding and visualization**.

## 🎯 Project Objectives

- Analyze overall UPI transaction performance
- Compare successful and failed transactions
- Identify transaction patterns across transaction types and merchant categories
- Analyze transaction activity by state, bank, device, network, day, and hour
- Analyze fraudulent transactions and identify potential risk patterns
- Build an interactive Power BI dashboard for business-friendly reporting

## 📊 Dataset

- **Records:** 250,000 transactions
- **Format:** CSV
- **Time Period:** 2024
- **Key Attributes:** Transaction ID, timestamp, transaction type, merchant category, amount, transaction status, age groups, state, sender/receiver bank, device type, network type, fraud flag, hour, day of week, and weekend indicator

The dataset is used for analytical purposes and is not included in the repository to avoid unnecessarily increasing repository size.

## 🛠️ Tools & Technologies

- **MySQL** — Data storage and SQL analysis
- **SQL** — Data exploration, aggregation, filtering, grouping, and fraud analysis
- **Power BI** — Interactive dashboards and data visualization
- **Power Query** — Data preparation and transformation
- **GitHub** — Project version control and documentation

## 🔄 Project Workflow

```text
UPI Transaction CSV
        ↓
Data Preparation
        ↓
MySQL Database
        ↓
SQL Analysis
        ↓
Power BI
        ↓
Interactive Dashboard
        ↓
Business Insights

## 📈 Key Findings

Based on the analysis of 250,000 UPI transactions, the following insights were identified:

- **Transaction Success Rate:** 95.05% of transactions were successful, while 4.95% failed.
- **Fraud Analysis:** 0.19% of transactions (480 records) were flagged as potential fraud, while 99.81% were marked as non-fraud.
- **Top Merchant Category:** Grocery recorded the highest transaction volume with 49,966 transactions (19.99%).
- **Food Transactions:** Food ranked second with 37,464 transactions (14.99%).
- **Transaction Value:** Among the top five merchant categories by volume, Shopping recorded the highest transaction amount at ₹7.69 crore.

### 💡 Business Insights

- The high transaction success rate indicates strong overall transaction completion in the analyzed dataset.
- Failed transactions represent an area for further investigation to understand possible payment issues.
- Grocery and Food account for a substantial share of transaction activity.
- Fraud-flagged records can be examined further to identify potential risk patterns.

*Note: Fraud-flagged records are dataset classifications and do not necessarily represent independently confirmed fraud cases.*

## 📂 Project Files

- **SQL Analysis:** [UPI_Transaction_Analysis.sql](UPI_Transaction_Analysis.sql)
- **Power BI Dashboard:** [UPI_Transaction_Analysis.pbix](UPI_Transaction_Analysis.pbix)
- **Dashboard Screenshots:** [View Screenshots](screenshots/)

## 👩‍💻 Author

**Ramseena M**

[GitHub](https://github.com/ramzinaa) | [LinkedIn](https://linkedin.com/in/ramseena-m-48b6a53b3/)
