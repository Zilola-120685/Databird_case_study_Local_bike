{% docs mrt__sales_report %}
This mart shows monthly sales performance per store and staff member.  
It helps analyze how many orders were made, how much was sold, and the average discounts applied each month.  
It also provides an overall monthly average discount for comparison.
Columns:
- **store_id**: Unique ID of the store where the orders were made.  
- **staff_id**: Unique ID of the staff member associated with the orders.  
- **order_month**: Month of the orders (truncated to the first day of the month).  
- **total_orders**: Total number of orders placed by the staff in the store during that month.  
- **total_purchased_items**: Total number of items purchased in those orders.  
- **total_net_order_amount**: Sum of the net order amounts (after discounts).  
- **total_discount_amount**: Total amount of discounts applied to the orders.  
- **avg_discount_percentage**: Average discount percentage applied by that staff/store during the month.  
- **avg_discount_percentage_per_order_month**: Average discount percentage across all stores and staff for the same month (for comparison).
{% enddocs %}