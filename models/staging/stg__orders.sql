SELECT
    order_id,
    customer_id,
    order_status,
    order_date,
    required_date,
    SAFE.PARSE_DATE('%Y-%m-%d', shipped_date) AS shipped_date,
    store_id,
    staff_id
FROM {{source('raw_data', 'orders')}}