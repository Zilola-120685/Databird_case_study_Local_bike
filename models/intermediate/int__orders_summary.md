{% docs int__orders_summary %}
This table summarizes key information for each order, combining general order metadata with financial and discount details.  
It is useful for sales performance tracking, order-level analysis, and discount impact evaluation.
Columns:
- **order_id**: Unique identifier of the order.
- **customer_id**: ID of the customer who placed the order.
- **order_date**: Date the order was placed.
- **store_id**: Store where the order was processed.
- **staff_id**: Staff member responsible for the order.
- **order_status**: Shipping status of the order ("shipped" or "not shipped").
- **number_of_purchased_items**: Number of items included in the order.
- **net_total_order_amount**: Total amount of the order after applying discounts.
- **total_discount_amount**: Total discount value applied across all items in the order.
- **total_discount_percentage**: Discount percentage based on total item value before discount.
{% enddocs %}