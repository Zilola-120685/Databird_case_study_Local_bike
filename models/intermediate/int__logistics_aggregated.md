{% docs int_logistics_aggregated %}
This table provides an aggregated logistics view per product and per store.  
It helps track sold quantities, available stock, and shipping delays.
Columns:
- **product_id**: Unique identifier of the product.
- **store_id**: Unique identifier of the store where the orders were placed.
- **number_of_orders**: Total number of distinct orders that included this product in this store.
- **total_qty_sold**: Total number of units sold for this product in this store.
- **avg_shipping_delay**: Average delay (in days) between the required date and the actual shipped date for this product.
- **stock_qty**: Minimum stock quantity for this product in this store (based on the stock table).
{% enddocs %}