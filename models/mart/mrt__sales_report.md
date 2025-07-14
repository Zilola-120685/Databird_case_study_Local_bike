{% docs mrt__logistics_stocks %}
This mart shows how well each product is selling and what stock is available, grouped by brand and category.  
It helps identify which products are most popular and whether current stock levels are sufficient.
Columns:
- **product_id**: Unique ID of the product.
- **brand_name**: Name of the brand the product belongs to.
- **category_name**: Name of the product category.
- **total_sold_qty**: Total number of units sold across all months.
- **avg_sold_quantity_per_month**: Average number of units sold per month.
- **total_stock**: Current total stock available for the product (across all stores).
{% enddocs %}