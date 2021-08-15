
-- ДЗ к уроку 9

-- “Транзакции, переменные, представления”

-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
START TRANSACTION;
-- Если нужно заменить запись с тем же индексом
REPLACE INTO sample.users (SELECT * FROM shop.users WHERE id = 1);
-- Если нужно вставить запись с присвоением нового индекса
INSERT INTO sample.users (name, created_at)
(SELECT
shop.users.name,
shop.users.created_at FROM shop.users WHERE shop.users.id = 1);
-- Удаление записи в исходной таблице
DELETE FROM shop.users WHERE id = 1;
COMMIT;

-- 2.Создайте представление, которое выводит название name товарной позиции из таблицы
-- products и соответствующее название каталога name из таблицы catalogs.
CREATE VIEW view1 (product_name, catalog_name)
AS 
SELECT products.name, catalogs.name 
FROM products
LEFT JOIN catalogs
ON products.catalog_id = catalogs.id;

SELECT * FROM view1;

--  “Хранимые процедуры и функции, триггеры"

-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от
-- текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с
-- 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый
-- вечер", с 00:00 до 6:00 — "Доброй ночи".
DELIMITER //
CREATE FUNCTION hello()
RETURNS TINYTEXT NO SQL
BEGIN
DECLARE time_of_day TIME;
SET time_of_day = CURRENT_TIME();
CASE
    WHEN (time_of_day BETWEEN '06:00:00' AND '11:59:59') THEN
      RETURN 'Доброе утро!';
    WHEN (time_of_day BETWEEN '12:00:00' AND '17:59:59') THEN
      RETURN 'Добрый день!';
    WHEN (time_of_day BETWEEN '18:00:00' AND '23:59:59') THEN
      RETURN 'Добрый вечер!';
    ELSE
      RETURN 'Доброй ночи!';
  END CASE;
END//
DELIMITER ;

SELECT hello() ;


-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его
-- описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля
-- принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь
-- того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям
-- NULL-значение необходимо отменить операцию.

DELIMITER //
CREATE TRIGGER check_insert_notNULL_name_desc 
BEFORE INSERT ON products
FOR EACH ROW 
BEGIN
	IF (NEW.name IS NULL) AND (NEW.desription IS NULL) THEN
		SIGNAL SQLSTATE '45000' SET
		MESSAGE_TEXT = 'Fields name and description may not take NULL values at sametime';
	END IF;
END //

CREATE TRIGGER check_update_notNULL_name_desc
BEFORE UPDATE ON products
FOR EACH ROW 
BEGIN
	IF (NEW.name IS NULL) AND (NEW.desription IS NULL) THEN
		SIGNAL SQLSTATE '45000' SET
		MESSAGE_TEXT = 'Fields name and description may not take NULL values at sametime.';
	END IF;
END //
DELIMITER ;

-- 3. Напишите хранимую функцию для вычисления произвольнонго числа Фибоначчи.

DELIMITER //
DROP FUNCTION IF EXISTS FIBONACCI //
CREATE FUNCTION FIBONACCI(num INT)
RETURNS INT DETERMINISTIC
BEGIN
DECLARE x, y, answer, i INT;
CASE num
	WHEN 0 THEN RETURN 0;
	WHEN 1 THEN RETURN 1;
	ELSE
		SET i = 2;
		SET x = 0;
		SET y = 1;
		SET answer = 0;
		WHILE i <= num DO
    		SET answer = y + x;
    		SET x = y;
    		SET y = answer;
    		SET i = i + 1;
  		END WHILE;
		RETURN answer;
END CASE;
END //

DELIMITER ;

SELECT FIBONACCI(10);