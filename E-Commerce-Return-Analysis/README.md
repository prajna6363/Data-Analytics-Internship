
# E-Commerce Return Rate — `E-Commerce-Return-Analysis/README.md`

```markdown
# E-Commerce Return Rate Reduction Analysis

## 📌 Project Overview

This project analyzes e-commerce order and return data to understand return patterns and identify areas that may contribute to higher return rates.

The project combines **Python, SQL, Machine Learning, and Power BI** to analyze returns, estimate return risk, identify high-risk products, and present business insights through an interactive dashboard.

---

## 🎯 Objectives

- Analyze overall e-commerce return rates.
- Compare return rates across product categories and locations.
- Analyze return rates by shipping method.
- Identify the most common return reasons.
- Build a machine learning model to estimate return probability.
- Generate return risk scores.
- Identify high-risk products.
- Create an interactive Power BI dashboard.

---

## 📊 Dataset

The dataset contains **5,000 orders and 23 columns**.

The dataset includes information about:

- Orders
- Products
- Customers
- Product categories
- Pricing
- Discounts
- Shipping methods
- Payment methods
- Return status
- Return reasons
- Return costs
- Profit/Loss
- Sustainability measures

### Important Features

`Product_Category`, `Product_Price`, `Order_Quantity`, `Discount_Applied`, `Shipping_Method`, `Payment_Method`, `User_Age`, `User_Gender`, `User_Location`, `Return_Status`, `Return_Reason`, `Order_Value`, `Return_Cost`, `Profit_Loss`

---

## 🛠️ Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- MySQL
- SQL
- Power BI
- Jupyter Notebook

---

## 🔍 Data Cleaning & EDA

The dataset was checked for:

- Missing values
- Duplicate records
- Data types
- Return status distribution

No missing values or duplicate records were found.

The `Order_Date` column was converted into datetime format for date-based analysis.

### Key Findings

- Total orders: **5,000**
- Returned orders: **1,450**
- Overall return rate: **29%**
- Clothing had the highest return rate at **37.43%**.
- Defective was the most common return reason, followed by Changed Mind.
- Return rates across shipping methods were relatively similar.

---

## 🗄️ SQL Analysis

The dataset was imported into MySQL as:

`ecommerce_returns`

SQL was used to analyze:

- Overall return rate
- Return rate by product category
- Return rate by shipping method
- Return reasons
- Top locations by return rate
- Monthly return trends

---

## 🤖 Machine Learning

A **Logistic Regression** model was developed to estimate the probability that an order would be returned.

### Features Used

- Product Category
- Product Price
- Order Quantity
- Discount Applied
- Shipping Method
- Payment Method
- User Age
- User Gender
- User Location
- Order Value
- CO2 Emissions
- Packaging Waste

Post-return information such as `Return_Reason`, `Days_to_Return`, `Return_Cost`, `Profit_Loss`, `CO2_Saved`, and `Waste_Avoided` was excluded from the model to reduce data leakage.

### Model Performance

| Metric | Score |
|---|---:|
| Accuracy | 70.3% |
| ROC-AUC | 59.48% |
| Return Class Recall | 3% |

The model showed limited ability to identify returned orders. Therefore, the predicted probability is treated as a **risk indicator rather than a definitive prediction**.

---

## ⚠️ High-Risk Product Analysis

A return risk score was generated using the model's predicted probability.

Products were analyzed based on:

- Total Orders
- Returned Orders
- Return Rate
- Average Risk Score
- Average Order Value

Products with at least **5 orders** were included in the high-risk product analysis.

The results were exported to:

`High_Risk_Products.csv`

---

## 📊 Power BI Dashboard

An interactive Power BI dashboard was created with:

### KPI Cards

- Total Orders
- Returned Orders
- Return Rate
- Average Order Value
- Total Return Cost

### Visualizations

- Return Rate by Product Category
- Return Reasons
- Monthly Return Rate Trend
- Return Rate by Shipping Method
- Top 10 Locations by Return Rate

### Filters

- Product Category
- Shipping Method
- Return Status

---

## 💡 Key Insights

- The overall return rate was **29%**.
- **Clothing** had the highest return rate at **37.43%**.
- **Defective** and **Changed Mind** were the most common return reasons.
- Shipping methods showed relatively small differences in return rates.
- Some locations had higher return percentages, although locations with fewer orders should be interpreted carefully.

---

## 💡 Conclusion

The project demonstrates how Python, SQL, Machine Learning, and Power BI can be combined to analyze e-commerce returns and generate business insights.

The analysis identifies product categories, return reasons, locations, and other areas that can be monitored to better understand and potentially reduce return rates.

---

