SELECT
    customer_id,
    first_name,
    last_name,
    phone AS phone_number,
    email,
    street AS street_name,
    city AS city_name,
    state,
    zip_code
FROM {{source('raw_data', 'customers')}}