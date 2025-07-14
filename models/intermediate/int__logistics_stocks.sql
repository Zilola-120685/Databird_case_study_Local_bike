SELECT
  p.product_id,
  b.brand_name,
  c.category_name,
  s.store_id,
  s.stock_quantity
FROM {{ ref('stg__stocks') }} s
LEFT JOIN {{ ref('stg__products') }} p 
  USING (product_id)
LEFT JOIN {{ ref('stg__categories') }} c
  ON p.category_id = c.category_id
LEFT JOIN {{ ref('stg__brands') }} b
  ON b.brand_id = p.brand_id