SELECT
    staff_id,
    first_name,
    last_name,
    email,
    phone AS phone_number,
    active,
    store_id,
    manager_id
FROM {{source('raw_data', 'staffs')}}