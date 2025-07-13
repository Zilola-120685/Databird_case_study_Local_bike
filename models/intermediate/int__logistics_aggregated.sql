SELECT
  oi.product_id,
  s.store_id,
  COUNT(DISTINCT(oi.order_id)) AS number_of_orders,
  SUM(oi.ordered_quantity) AS total_qty_sold,
  ROUND(AVG(DATE_DIFF(o.required_date, o.shipped_date, DAY)),2) AS avg_shipping_delay,
  MIN(s.stock_quantity) AS stock_qty
FROM {{ ref('stg__order_items') }} oi
LEFT JOIN {{ ref('stg__orders') }} o 
  USING (order_id)
LEFT JOIN {{ ref('stg__stocks') }} s
  ON s.product_id = oi.product_id
  AND o.store_id = s.store_id
GROUP BY
  oi.product_id,
  s.store_id
ORDER BY
  total_qty_sold DESC