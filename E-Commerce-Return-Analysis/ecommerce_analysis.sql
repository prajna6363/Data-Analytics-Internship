CREATE DATABASE online_sales;
USE online_sales;

CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    product_category VARCHAR(100),
    product_name VARCHAR(150),
    units_sold INT,
    unit_price DECIMAL(10,2),
    amount DECIMAL(10,2),
    region VARCHAR(100),
    payment_method VARCHAR(50)
);

SHOW TABLES;

SELECT COUNT(*) AS total_records
FROM online_sales_data;


DESCRIBE online_sales_data;

SELECT *
FROM online_sales_data
LIMIT 10;

ALTER TABLE online_sales_data
DROP COLUMN order_date_new;

#1
SELECT
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')) AS year,
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) AS month,
    SUM(amount) AS monthly_revenue
FROM online_sales_data
GROUP BY
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')),
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y'))
ORDER BY year, month;

#2
SELECT
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')) AS year,
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) AS month,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales_data
GROUP BY
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')),
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y'))
ORDER BY year, month;

#3
SELECT
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')) AS year,
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) AS month,
    COUNT(DISTINCT order_id) AS order_volume,
    ROUND(SUM(amount), 2) AS monthly_revenue
FROM online_sales_data
GROUP BY
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')),
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y'))
ORDER BY year, month;

#4
SELECT
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')) AS year,
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) AS month,
    ROUND(SUM(amount), 2) AS monthly_revenue
FROM online_sales_data
GROUP BY
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')),
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y'))
ORDER BY monthly_revenue DESC
LIMIT 3;

#5
SELECT
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')) AS year,
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) AS month,
    COUNT(DISTINCT order_id) AS order_volume,
    ROUND(SUM(amount), 2) AS monthly_revenue
FROM online_sales_data
WHERE STR_TO_DATE(order_date, '%d-%m-%Y')
      BETWEEN '2024-01-01' AND '2024-04-30'
GROUP BY
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')),
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y'))
ORDER BY year, month;

#6
SELECT
    COUNT(*) AS total_records,
    COUNT(order_id) AS non_null_orders,
    COUNT(order_date) AS non_null_dates,
    COUNT(amount) AS non_null_amounts
FROM online_sales_data;

#7
SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(amount), 2) AS total_revenue,
    ROUND(AVG(amount), 2) AS average_order_value,
    MIN(STR_TO_DATE(order_date, '%d-%m-%Y')) AS first_order_date,
    MAX(STR_TO_DATE(order_date, '%d-%m-%Y')) AS last_order_date
FROM online_sales_data;online_sales_data