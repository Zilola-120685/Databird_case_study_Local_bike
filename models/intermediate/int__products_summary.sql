SELECT
  p.product_id,
  SUM(oi.ordered_quantity) AS total_qty_sold,
  b.brand_name,
  c.category_name
FROM {{ ref('stg__order_items') }} oi
LEFT JOIN {{ ref('stg__products') }} p
  USING (product_id)
LEFT JOIN {{ ref('stg__categories') }} c
  ON c.category_id = p.category_id
LEFT JOIN {{ ref('stg__brands') }} b
  ON b.brand_id = p.brand_id
GROUP BY
  p.product_id,
  b.brand_name,
  c.category_name
ORDER BY
  total_qty_sold DESC