
-- Дз к 7-ому уроку

-- 1. Составьте список пользователей users, которые осуществили 
-- хотя бы один заказ orders в интернет магазине.

SELECT DISTINCT users.id, name 
FROM users
JOIN orders
ON orders.user_id = users.id;

-- ИЛИ
SELECT id, name FROM users 
WHERE EXISTS(SELECT 1 FROM orders WHERE users.id = orders.user_id);

-- 2. Выведите список товаров products и разделов catalogs,
-- который соответствует товару.

SELECT p.id, p.name AS product_name, c.name AS catalog_name FROM products AS p
JOIN catalogs AS c
ON c.id = p.catalog_id;

-- ИЛИ
SELECT p.id, p.name AS product_name,
(SELECT c.name FROM catalogs AS c WHERE p.catalog_id = c.id) as catalog_name
FROM products AS p;

-- 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) 
-- и таблица городов cities (label, name). Поля from, to и label содержат
-- английские названия городов, поле name — русское.
-- Выведите список рейсов flights с русскими названиями городов.

SELECT 
f.id,
c_from.name AS 'from',
c_to.name AS 'to'
FROM
flights AS f
JOIN cities AS c_from
ON c_from.label = f.from
JOIN cities AS c_to
ON c_to.label = f.to
ORDER BY f.id;
-- ИЛИ

SELECT
id,
(SELECT c.name FROM cities AS c WHERE f.from = c.label) as 'from',
(SELECT c.name FROM cities AS c WHERE f.to = c.label) as 'to'
FROM flights AS f;