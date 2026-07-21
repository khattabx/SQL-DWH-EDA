-- Finding the Total Sales
SELECT SUM(sales_amount) AS total_sales FROM gold.fact_sales

-- Finding how many items are sold
SELECT SUM(quantity) AS total_quantity FROM gold.fact_sales

-- Finding the average selling price
SELECT AVG(price) AS avg_price FROM gold.fact_sales

-- Finding the Total number of Orders
SELECT * FROM gold.fact_sales

SELECT COUNT(order_number) AS totla_order FROM gold.fact_sales

SELECT COUNT(DISTINCT order_number) AS totla_order
FROM gold.fact_sales

-- Finding the total number of products
SELECT COUNT(product_key) AS totla_products from gold.dim_products

SELECT COUNT(DISTINCT product_key) AS totla_products
from gold.dim_products

SELECT COUNT(product_name) AS totla_products from gold.dim_products

-- Finding the total number of customers

SELECT COUNT(customer_key) AS totla_customers from gold.dim_customers

SELECT COUNT(DISTINCT customer_key) AS totla_customers
from gold.dim_customers

-- Finding the total number of customers that has placed an order
SELECT COUNT(customer_key) AS total_customers FROM gold.fact_sales;

SELECT COUNT(DISTINCT customer_key) AS total_customers
FROM gold.fact_sales;

-- Generate a Report that shows all key metrics of the business

SELECT 'Total Sales' AS measure_name, SUM(sales_amount) AS measure_value
FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity', SUM(quantity)
FROM gold.fact_sales
UNION ALL
SELECT 'Average Price', AVG(price)
FROM gold.fact_sales
UNION ALL
SELECT 'Total Orders', COUNT(DISTINCT order_number)
FROM gold.fact_sales
UNION ALL
SELECT 'Total Products', COUNT(DISTINCT product_name)
FROM gold.dim_products
UNION ALL
SELECT 'Total Customers', COUNT(customer_key)
FROM gold.dim_customers;