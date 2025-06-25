WITH
max_date_select AS (
    SELECT MAX(date) AS date_max
    FROM `bigquery-public-data.iowa_liquor_sales.sales`
),

tb_sales AS (
    SELECT
        s.date,
        CASE
            WHEN s.bottles_sold < 0 THEN 'Refund'
            ELSE 'Sale'
        END AS transaction_type,
        s.store_name,
        s.city,
        CONCAT(s.county, ' COUNTY, IA') AS county,
        s.category_name,
        s.vendor_name,
        s.item_description,
        ROUND(SUM(ABS(s.state_bottle_cost * s.bottles_sold)), 2) AS sales_cost,
        ROUND(SUM(ABS(s.volume_sold_liters)), 2) AS volume_sold_liters,
        COUNT(*) AS transaction_count
    FROM `bigquery-public-data.iowa_liquor_sales.sales` AS s
    CROSS JOIN max_date_select AS md
    WHERE
        s.county NOT IN ('EL PASO')
        AND s.vendor_name = 'DIAGEO AMERICAS'
        AND s.date BETWEEN DATE_TRUNC(md.date_max, MONTH)
            AND LAST_DAY(md.date_max) -- noqa: LT02
    GROUP BY 1, 2, 3, 4, 5, 6, 7, 8
)

SELECT *
FROM tb_sales;
