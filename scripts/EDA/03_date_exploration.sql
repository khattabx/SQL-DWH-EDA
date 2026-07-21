-- Finding the date of the first and last order

SELECT
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_dagte
FROM gold.fact_sales

-- Q: How many years and months of sales are avilable ?
SELECT
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_dagte,
    DATEDIFF(
        month,
        MIN(order_date),
        MAX(order_date)
    ) AS order_range_months,
    DATEDIFF(
        year,
        MIN(order_date),
        MAX(order_date)
    ) AS order_range_years
FROM gold.fact_sales

-- Finding the youngest and the oldest customer

SELECT
    MIN(birthdate) AS oldest_bdate,
    DATEDIFF(
        YEAR,
        MIN(birthdate),
        GETDATE()
    ) AS oldest_age,
    MAX(birthdate) AS youngest_bdate,
    DATEDIFF(
        YEAR,
        MAX(birthdate),
        GETDATE()
    ) AS youngest_age
FROM gold.dim_customers