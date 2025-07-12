SELECT
    store_id,
    store_name,
    phone AS store_phone_number,
    email,
    street AS street_name,
    city AS city_name,
    state,
    zip_code
FROM {{source('raw_data', 'stores')}}