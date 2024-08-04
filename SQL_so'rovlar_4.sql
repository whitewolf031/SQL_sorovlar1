SELECT *
FROM customer_demographics
JOIN customer_customer_demo USING(customer_type_id)

SELECT *
FROM suppliers
JOIN products USING(supplier_id)
JOIN categories USING(category_id)
JOIN order_details USING(product_id)
	

SELECT *
FROM orders
JOIN employees USING(employee_id)
JOIN customers USING(customer_id)
JOIN employee_territories USING(employee_id)
JOIN employee USING(employee_id)
LEFT JOIN customer_customer_demo USING(customer_id)

SELECT *
FROM order_details
JOIN orders USING(order_id)
