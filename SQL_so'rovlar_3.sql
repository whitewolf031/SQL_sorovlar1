-- 2
SELECT p.product_name, p.quantity_per_unit, p.discontinued, s.contact_name, s.phone
FROM products p
FULL OUTER JOIN suppliers s USING(supplier_id)
WHERE p.category_id = 8 or p.category_id = 1 AND p.discontinued = 1

-- 3
SELECT c.contact_name, o.order_id
FROM customers c
FULL OUTER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

--4
SELECT c.contact_name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;