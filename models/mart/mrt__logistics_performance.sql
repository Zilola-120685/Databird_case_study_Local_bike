SELECT
  store_id,
  ROUND(AVG(delay_between_order_date_and_shipped_date), 2) AS avg_delay_order_to_shipped,
  MIN(delay_between_order_date_and_shipped_date) AS min_delay_order_to_shipped,
  MAX(delay_between_order_date_and_shipped_date) AS max_delay_order_to_shipped,
  ROUND(AVG(delay_between_required_date_and_shipped_date), 2) AS avg_delay_required_to_shipped
FROM {{ ref('int__logisticts_per_order') }}
GROUP BY store_id
