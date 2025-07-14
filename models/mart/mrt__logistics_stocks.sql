WITH monthly_sales AS (
  SELECT
    s.product_id,
    s.brand_name,
    s.category_name,
    SUM(lo.ordered_quantity) AS total_sold_quantity,
    DATE_TRUNC(order_date, MONTH) AS order_month
  FROM {{ ref('int__logistics_per_order') }} lo
  JOIN {{ ref('int__logistics_stocks') }} s
    USING (product_id)
  GROUP BY
    s.product_id,
    s.brand_name,
    s.category_name,
    order_month
), agg_per_month AS (
  SELECT
    product_id,
    brand_name,
    category_name,
    SUM(total_sold_quantity) AS total_sold_qty,
    ROUND(SUM(total_sold_quantity) / COUNT(DISTINCT order_month), 2) AS avg_sold_quantity_per_month
  FROM monthly_sales
  GROUP BY 
    product_id,
    brand_name,
    category_name
), stocks AS (
  SELECT
    product_id,
    brand_name,
    category_name,
    SUM(stock_quantity) AS total_stock
  FROM {{ ref('int__logistics_stocks') }}
  GROUP BY
    product_id,
    brand_name,
    category_name
)
SELECT
  s.product_id,
  s.brand_name,
  s.category_name,
  ag.total_sold_qty,
  ag.avg_sold_quantity_per_month,
  s.total_stock
FROM agg_per_month ag
JOIN stocks s
  USING (product_id, brand_name, category_name)
ORDER BY total_sold_qty DESC