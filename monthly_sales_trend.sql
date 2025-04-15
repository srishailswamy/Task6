
-- Sales Trend Analysis Using Aggregations (MySQL Version)

SELECT
    YEAR(parsed_date) AS year,
    MONTH(parsed_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM
    online_sales_data
WHERE
    parsed_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY
    YEAR(parsed_date),
    MONTH(parsed_date)
ORDER BY
    year,
    month;
