# HR Analytics – Employee Attrition Prediction

## 📌 Project Overview

This project analyzes employee data to understand employee attrition patterns and identify factors associated with employees leaving an organization.

The project uses **Python, Machine Learning, and Power BI** to perform data cleaning, exploratory analysis, employee attrition prediction, and dashboard visualization.

---

## 🎯 Objectives

- Analyze employee attrition patterns.
- Identify important factors associated with employee attrition.
- Perform data cleaning and preprocessing.
- Explore relationships between employee characteristics and attrition.
- Build machine learning models to predict employee attrition.
- Create an interactive Power BI dashboard for HR insights.

---

## 📊 Dataset

The dataset contains **1,470 employee records and 35 columns**.

The dataset includes information related to:

- Employee demographics
- Job roles
- Department
- Monthly income
- Job satisfaction
- Overtime
- Business travel
- Years of experience
- Work-life balance
- Years at company
- Employee attrition

---

## 🛠️ Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- Power BI
- Jupyter Notebook

---

## 🔍 Data Cleaning & Preprocessing

The dataset was checked for missing values and duplicate records.

The following unnecessary columns were removed:

- EmployeeCount
- EmployeeNumber
- Over18
- StandardHours

The target variable `Attrition` was encoded as:

- No → 0
- Yes → 1

Categorical variables were converted using one-hot encoding before model training.

---

## 📈 Exploratory Data Analysis

The analysis explored employee attrition based on:

- Department
- Job Role
- Overtime
- Business Travel
- Job Satisfaction
- Work-Life Balance
- Age
- Monthly Income
- Years at Company

### Key Findings

- Total employees: **1,470**
- Employees who left: **237**
- Overall attrition rate: **16.12%**
- Research & Development had the highest number of employees leaving.
- Overtime was common among employees who left.
- Employee income, age, experience, and other features were used as predictive signals by the machine learning model.

---

## 🤖 Machine Learning

Two classification models were evaluated:

### Logistic Regression

| Metric | Score |
|---|---:|
| Accuracy | 86.1% |
| Precision | 61.5% |
| Recall | 34.0% |
| F1 Score | 43.8% |

### Random Forest

| Metric | Score |
|---|---:|
| Accuracy | 82.7% |
| Precision | 33.3% |
| Recall | 8.5% |
| F1 Score | 13.6% |

Logistic Regression performed better on the evaluated metrics, particularly for identifying employees in the attrition class.

---

## 📊 Power BI Dashboard

An interactive Power BI dashboard was created with:

### KPI Cards

- Total Employees
- Attrition Count
- Attrition Rate
- Average Monthly Income
- Average Age

### Visualizations

- Attrition Count by Department
- Attrition by Overtime
- Attrition Count by Job Role
- Attrition by Job Satisfaction
- Attrition by Business Travel
- Average Age vs Monthly Income by Attrition

### Filters

- Attrition Status
- Department
- Overtime

---

## 💡 Conclusion

The project demonstrates how employee data can be analyzed using Python and Power BI to understand attrition patterns.

Machine learning models were also evaluated to estimate employee attrition. The analysis can help identify patterns in employee turnover and provide HR teams with data-driven insights.

---

