SELECT
    CONCAT(order_id, '_', item_id) AS order_item_id,
    order_id,
    product_id,
    quantity AS ordered_quantity,
    list_price,
    discount,
    ROUND((quantity*list_price),2) AS order_item_amount_before_discount,
    ROUND((quantity*list_price)*discount,2) AS discount_amount,
    ROUND((quantity*list_price)*(1-discount),2) AS net_order_item_amount 
FROM {{source('raw_data', 'order_items')}}