SELECT
  o.order_id,
  oi.product_id,
  oi.ordered_quantity,
  o.store_id,
  o.order_date,
  o.required_date,
  o.shipped_date,
  DATE_DIFF(o.shipped_date, o.order_date, DAY) AS delay_between_order_date_and_shipped_date,
  DATE_DIFF(o.required_date, o.shipped_date, DAY) AS delay_between_required_date_and_shipped_date
FROM {{ ref('stg__orders') }} o
LEFT JOIN {{ ref('stg__order_items') }} oi
  USING (order_id)
