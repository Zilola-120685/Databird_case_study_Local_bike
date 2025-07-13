{% docs int__stores_and_customers_summary %}
Description  
This table aggregates sales and customer metrics per store and staff member.  
It provides insights into order volume, customer base, and average order value, supporting operational and sales performance analysis.
Columns:
- **store_id**: Identifier of the store where the orders were placed.
- **staff_id**: Identifier of the staff member who processed the orders.
- **first_order_date**: Earliest order date for that store-staff combination.
- **number_of_orders**: Total number of orders handled by this staff in the store.
- **number_of_customers**: Count of distinct customers who placed orders through this staff.
- **net_total_orders_amount**: Total net revenue (after discount) from all orders.
- **avg_number_orders_per_customer**: Average number of orders placed per customer.
- **avg_order_amount**: Average revenue per order.
- **avg_order_amount_per_customer**: Average total revenue per customer.
{% enddocs %}