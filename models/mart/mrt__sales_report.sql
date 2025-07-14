WITH base AS (
  SELECT
    store_id,
    staff_id,
    DATE_TRUNC(order_date, MONTH) AS order_month,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(number_of_purchased_items),2) AS total_purchased_items,
    ROUND(SUM(net_total_order_amount),2) AS total_net_order_amount,
    ROUND(SUM(total_discount_amount),2) AS total_discount_amount,
    ROUND(AVG(total_discount_percentage),2) AS avg_discount_percentage
  FROM {{ ref('int__orders_summary') }}
  GROUP BY
    store_id,
    staff_id,
    order_month
)
SELECT
  *,
  ROUND(AVG(avg_discount_percentage) OVER (PARTITION BY order_month),2) AS avg_discount_percentage_per_order_month
FROM base