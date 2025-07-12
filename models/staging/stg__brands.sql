SELECT
    brand_id,
    brand_name
FROM {{source('raw_data', 'brands')}}