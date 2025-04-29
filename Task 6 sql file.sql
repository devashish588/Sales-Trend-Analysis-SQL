SELECT * FROM `sales trend analysis`.order_table;
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM
    `sales trend analysis`.order_table
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    year,
    month;

