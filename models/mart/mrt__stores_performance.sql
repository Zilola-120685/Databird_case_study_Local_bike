SELECT
  store_id,
  staff_id,
  order_month,
  number_of_orders,
  number_of_customers,
  net_total_orders_amount,
  avg_number_orders_per_customer,
  avg_order_amount,
  avg_order_amount_per_customer
FROM {{ ref('int__stores_and_customers_summary') }}