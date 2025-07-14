{% docs int_logistics_stocks %}
This table provides a logistics info combining stock levels per product and per store with product metadata.  
It includes category and brand names for analysis.
Columns:
- **product_id**: Unique identifier of the product.  
- **brand_name**: Name of the brand associated with the product.  
- **category_name**: Category to which the product belongs.  
- **store_id**: Identifier of the store holding the stock.  
- **stock_quantity**: Number of units currently in stock for this product at the given store.
{% enddocs %}