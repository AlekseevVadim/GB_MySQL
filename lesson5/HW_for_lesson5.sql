-- Задание к уроку 5

-- Операторы, фильтрация, сортировка и ограничение

-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.

-- РЕШЕНИЕ
UPDATE users 
SET created_at = NOW(),
updated_at = NOW();
-- КОНЕЦ

-- 2. Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR 
-- и в них долгое время помещались значения в формате 20.10.2017 8:10. 
-- Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.

-- РЕШЕНИЕ
UPDATE users SET
created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');

ALTER TABLE users MODIFY created_at DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE users MODIFY updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
-- КОНЕЦ

-- 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые
-- разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы.
-- Необходимо отсортировать записи таким образом, чтобы они выводились в порядке
-- увеличения значения value. Однако нулевые запасы должны выводиться в конце,
 -- после всех записей.

-- РЕШЕНИЕ
SELECT * FROM storehouses_products ORDER BY FIELD(value, 0), value;
-- или
SELECT * FROM storehouses_products ORDER BY IF(value > 0, 0, 1), value;
 -- КОНЕЦ

-- 4. (по желанию) Из таблицы users необходимо извлечь пользователей,
-- родившихся в августе и мае. Месяцы заданы в виде списка английских
-- названий (may, august)

- РЕШЕНИЕ
SELECT * FROM users WHERE MONTHNAME(birthday) IN('may', 'august');
-- КОНЕЦ

-- 5. (по желанию) Из таблицы catalogs извлекаются записи при помощи
-- запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте 
-- записи в порядке, заданном в списке IN.

-- РЕШЕНИЕ
SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY FIELD(id, 5, 1, 2);
-- КОНЕЦ

-- агрегация данных(выполнял задания по БД vk)
-- 1.Подсчитайте средний возраст пользователей в таблице users.

-- РЕШЕНИЕ
SELECT AVG(TIMESTAMPDIFF(YEAR, birthday, NOW())) FROM profiles;
-- КОНЕЦ

-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый
-- из дней недели.
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.

SELECT 
DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday), DAY(birthday))), '%W') AS day_of_week,
count(*) AS total
FROM
profiles
GROUP BY day_of_week;
