WITH order_essentials AS (
    SELECT
        order_id,
        customer_id,
        order_date,
        store_id,
        staff_id,
        CASE 
            WHEN shipped_date IS NOT NULL THEN "shipped" 
            ELSE "not shipped" 
        END AS order_status
    FROM {{ref("stg__orders")}}
), order_details AS (
    SELECT
        order_id,
        COUNT(order_item_id) AS number_of_purchased_items,
        ROUND(SUM(net_order_item_amount),2) AS net_total_order_amount,
        ROUND(SUM(discount_amount),2) AS total_discount_amount,
        ROUND((SUM(discount_amount)/SUM(order_item_amount_before_discount))*100,2) AS total_discount_percentage
    FROM {{ref("stg__order_items")}}
    GROUP BY 
        order_id
)
SELECT 
    oe.*,
    od.number_of_purchased_items,
    od.net_total_order_amount,
    od.total_discount_amount,
    od.total_discount_percentage
FROM order_essentials oe
LEFT JOIN order_details od
    USING (order_id)
ORDER BY
    oe.order_date