-- ������� � ����� 11. ����������� ��������

-- ������� 1
-- �������� ������� logs ���� Archive. ����� ��� ������ �������� ������ � �������� users,
-- catalogs � products � ������� logs ���������� ����� � ���� �������� ������, ��������
-- �������, ������������� ���������� ����� � ���������� ���� name.

USE shop;

SHOW TABLES;

SHOW ENGINES;

SELECT * FROM users;
DESC users;
SELECT * FROM catalogs;
DESC catalogs;
SELECT * FROM products;
DESC products;

CREATE TABLE logs (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������ � �������",
tbl_name VARCHAR(150) NOT NULL COMMENT "�������� �������",
row_id INT UNSIGNED NOT NULL COMMENT "������ �� ������������� ������ �������",
row_name VARCHAR(255) NOT NULL COMMENT "���������� ���� name �������"
) ENGINE=ARCHIVE;

DROP TRIGGER IF EXISTS users_insert_logs;
DELIMITER //
CREATE TRIGGER users_insert_logs AFTER INSERT ON users
FOR EACH ROW 
BEGIN
  INSERT INTO logs VALUES (default, default, 'users', NEW.id, NEW.name);
END//
DELIMITER ;

DROP TRIGGER IF EXISTS catalogs_insert_logs;
DELIMITER //
CREATE TRIGGER catalogs_insert_logs AFTER INSERT ON catalogs
FOR EACH ROW 
BEGIN
  INSERT INTO logs VALUES (default, default, 'catalogs', NEW.id, NEW.name);
END//
DELIMITER ;

DROP TRIGGER IF EXISTS products_insert_logs;
DELIMITER //
CREATE TRIGGER products_insert_logs AFTER INSERT ON products
FOR EACH ROW 
BEGIN
  INSERT INTO logs VALUES (default, default, 'products', NEW.id, NEW.name);
END//
DELIMITER ;


-- ��������
INSERT INTO users VALUES (default, 'Igor', '1990-10-05', default, default);
INSERT INTO catalogs VALUES (default, '��������');
INSERT INTO products VALUES (default, 'Intel Core i5-8000', NULL, NULL, 1, default, default);

SELECT * FROM logs;
SHOW TABLE STATUS LIKE 'logs';


-- ������� 2
-- (�� �������) �������� SQL-������, ������� �������� � ������� users ������� �������.

CREATE TABLE rand_users (name VARCHAR(50), birthday_at DATE);

INSERT INTO rand_users VALUES 
('Vladimir', '1984-11-12'),
('Natalia', '1998-09-13'),
('Petr', '1990-01-13'),
('Michael', '1980-06-01'),
('Luka', '2001-04-20'),
('Olga', '1991-01-13'),
('Georgiy', '1999-11-06'),
('Vadim', '1996-11-06'),
('Evgeniy', '1991-09-09'),
('Taras', '1970-11-06');

INSERT INTO users (name, birthday_at) 
(SELECT fst.name, sth.birthday_at FROM 
rand_users AS fst,
rand_users AS sec,
rand_users AS thd,
rand_users AS fth,
rand_users AS fif,
rand_users AS sth);

SELECT * FROM users;




