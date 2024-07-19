SELECT * 
FROM customers;

SELECT contact_name, city
FROM customers;

--3. Buyurtmalar jadvalidan barcha yozuvlarni tanlang. Buyurtma identifikatori va qiymatni jo'natish sanasi va buyurtmani yaratish sanasi o'rtasidagi farqni hisoblaydigan  ustunlarni oling

SELECT *
FROM orders;

SELECT order_date, required_date, shipped_date
FROM orders;

SELECT COUNT(*)
FROM customers;

SELECT order_id
FROM orders;
WHERE ship_country IN ('France','Austria','Spain');

SELECT required_date
FROM orders
ORDER BY required_date DESC;

SELECT required_date
FROM orders
ORDER BY shipped_date ASC;

SELECT AVG(unit_price)
FROM products;

SELECT MAX(unit_price) 
FROM products

