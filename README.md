# Alt Mobility: Sales, Payment & Customer Retention Analysis

This repository contains a comprehensive analysis of Alt Mobility's customer order and payment data. The objective of this project is to derive business insights related to order fulfillment, customer behavior, payment reliability, and retention trends using SQL, Python, and Power BI.

---

## Datasets Used

- `customer_orders.xlsx`: Contains customer orders with order IDs, product details, order status, and timestamps.
- `payments.xlsx`: Contains transaction-level data with payment statuses, amounts, and related order references.

---

## Problem Space

The analysis addresses the following business challenges:

- Understanding order fulfillment efficiency
- Analyzing customer purchase patterns and segmentation
- Evaluating payment processing success and failure rates
- Measuring customer retention across cohorts
- Building dashboards for monitoring sales and retention KPIs

---

## Tasks and Methodology

### 1. Order and Sales Analysis

- Analyzed monthly sales and order status distribution (completed, cancelled, returned).
- Identified peak and low-performing periods for revenue and fulfillment.
- Assessed the correlation between order status and financial performance.

**Screenshot – SQL Query for Order and Sales Analysis**  
![Order and Sales SQL Query](![Screenshot 2025-04-30 154051](https://github.com/user-attachments/assets/a532c744-00b4-4fb5-9589-febc70139cd0)
)



---

### 2. Customer Analysis

- Segmented customers into first-time and repeat purchasers.
- Tracked purchase frequency over time to understand loyalty behavior.
- Identified high-value customers and purchasing patterns.

**Screenshot – SQL Query for Customer Analysis**  
![Customer SQL Query](![Screenshot 2025-04-30 154303](https://github.com/user-attachments/assets/052f18d7-6d44-4153-aa8d-2cf94327d099)
)


---

### 3. Payment Status Analysis

- Calculated the success rate of payments across different months.
- Analyzed failure trends and their impact on order completion.
- Correlated failed transactions with order status to identify potential process bottlenecks.

**Screenshot – SQL Query for Payment Analysis**  
![Payment SQL Query](![Screenshot 2025-04-30 154529](https://github.com/user-attachments/assets/f4c2fa9d-8352-4767-b4ce-830755b61885)
)

**Screenshot – Payment failed trend**  
![Payment failed trend](![Screenshot 2025-04-30 154615](https://github.com/user-attachments/assets/a2566ad9-e00d-40a8-b750-e29b138f4c65)
)

---

### 4. Order Details Report

- Merged order and payment datasets to create a single consolidated view.
- Generated a detailed transactional report including order status, customer ID, order value, payment amount, and payment status.
- Created KPIs such as total revenue, total orders, successful payment rate, and average order value.

**Screenshot – SQL Query for Merged Report**  
![Merged Order Report Query](![Screenshot 2025-04-30 154644](https://github.com/user-attachments/assets/1b225982-dd06-4aea-9bb7-a624a6374946)
)



---

### 5. Customer Retention Analysis

- Performed cohort analysis by grouping customers based on their first purchase month.
- Tracked repeat purchases in subsequent months to measure retention.
- Visualized retention trends using a heatmap matrix (Python and Power BI).
- Highlighted retention drop-off points and long-term engagement patterns.

**Screenshot – Retention Heatmap Python**  
![Customer Retention Heatmap]![output](https://github.com/user-attachments/assets/1b90b5f1-06d0-4f73-85c7-7cbdf8984336)

)

---

## Visualizations

Power BI dashboards and Python visualizations were used to effectively communicate the findings. Key dashboard visuals include:

- Monthly order and revenue trend
- Order status and payment status breakdown
- Customer segmentation and frequency
- Customer retention heatmap (cohort-based)

**Screenshot – Power BI Dashboard Overview**  
![Power BI Dashboard]![Screenshot 2025-04-30 172708](https://github.com/user-attachments/assets/643aa504-278f-4241-a1ec-c7cb006da988)

)

---

## Summary of Findings

- Over 80% of orders were completed successfully; cancellations peaked between June and August.
- Approximately 32% of customers made repeat purchases, showing moderate retention.
- Payment success rate remained high (above 90%) with a few failure spikes during high traffic periods.
- Retention heatmaps showed significant drop-off after Month 2, indicating potential for customer engagement strategies.
- Many customers did not return after their first order, highlighting a need for post-purchase engagement programs.

---

## Recommendations

- Implement personalized engagement or loyalty campaigns to improve retention beyond Month 2.
- Investigate causes of cancellations during seasonal peaks or operational delays.
- Automate retries or follow-up for failed payments to recover revenue.
- Leverage customer segmentation insights for targeted marketing and re-engagement workflows.

---

## Deliverables

- `SqlAnalysis.sql`: All SQL queries for data extraction, aggregation, and reporting.
- `EDA.ipynb`: Jupyter notebook performing retention cohort analysis using Python and Seaborn.
- `Visualization-Insights.pbix`: Power BI dashboard file with interactive visuals.
- Combined dataset views for further use and reporting.
- This README with detailed documentation and visual placeholders.

---


