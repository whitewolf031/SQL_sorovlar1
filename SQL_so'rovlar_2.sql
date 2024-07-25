--part 1
SELECT customer_id --ship_country
FROM orders
WHERE ship_country LIKE 'U%'

--part 2
SELECT order_id, customer_id, freight, ship_country
FROM orders
WHERE ship_country LIKE 'N%'
ORDER BY freight DESC
LIMIT 10

--part 3 
SELECT first_name, last_name, home_phone, region
FROM employees
WHERE region IS NULL

--part 4
SELECT COUNT(*)
FROM customers
WHERE region IS NOT NULL

--PART 5
SELECT *
FROM suppliers
ORDER BY supplier_id DESC

--part 6
SELECT freight
FROM orders
WHERE ship_region IS NOT NULL
ORDER BY freight > 2750 DESC

--part 7
SELECT country
FROM customers
INTERSECT
SELECT country
FROM suppliers
ORDER BY country ASC

--PART 8
SELECT country
FROM customers
INTERSECT
SELECT country
FROM suppliers
INTERSECT
SELECT country
FROM employees

--part 9
SELECT city 
FROM customers
INTERSECT
SELECT city 
FROM suppliers
EXCEPT
SELECT country
FROM employees