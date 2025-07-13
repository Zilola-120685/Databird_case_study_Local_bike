{% docs int__logisticts_per_order %}
This table provides detailed logistics data at the order and product level.  
It includes order and shipping dates, ordered quantities, and associated stock levels, making it useful for analyzing delivery performance and fulfillment timelines.
Columns:
- **order_id**: Unique identifier of the order.
- **product_id**: Identifier of the product included in the order.
- **ordered_quantity**: Number of units ordered for the product.
- **store_id**: Store where the order was placed.
- **order_date**: Date when the order was created.
- **required_date**: Date by which the order was expected to be shipped.
- **shipped_date**: Actual date the order was shipped.
- **stock_quantity**: Stock quantity available for the product at the time of the order (based on matching product and store).
- **delay_between_order_date_and_shipped_date**: Number of days between order placement and shipment (fulfillment time).
- **delay_between_required_date_and_shipped_date**: Number of days between the required date and the actual shipping date (indicates lateness or earliness).
{% enddocs %}