SELECT 
  o.store_id, 
  o.staff_id,
  MIN(o.order_date) AS first_order_date,
  DATE_TRUNC(order_date, MONTH) AS order_month,
  COUNT(o.order_id) AS number_of_orders,
  COUNT(DISTINCT(o.customer_id)) AS number_of_customers,
  ROUND(SUM(oi.net_order_item_amount),2) net_total_orders_amount,
  ROUND(COUNT(o.order_id) * 1.0 / NULLIF(COUNT(DISTINCT o.customer_id), 0), 2) AS avg_number_orders_per_customer,
  ROUND(SUM(oi.net_order_item_amount) / NULLIF(COUNT(o.order_id), 0), 2) AS avg_order_amount,
  ROUND(SUM(oi.net_order_item_amount) / NULLIF(COUNT(DISTINCT o.customer_id), 0), 2) AS avg_order_amount_per_customer
FROM {{ref('stg__orders')}} o
LEFT JOIN {{ref('stg__order_items')}} oi
  USING (order_id) 
GROUP BY
  store_id,
  staff_id,
  order_month