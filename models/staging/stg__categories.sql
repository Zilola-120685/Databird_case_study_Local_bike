SELECT
    category_id,
    category_name
FROM {{source('raw_data', 'categories')}}