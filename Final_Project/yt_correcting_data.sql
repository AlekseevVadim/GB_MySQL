-- База данных (БД) yutu_music.

-- Делаем БД активной для работы
USE yutu_music;

-- Просмотр, доработка и улучшение сформированных ресурсом 'http://filldb.info' данных
SHOW TABLES;


-- Таблица countries
SELECT * FROM countries;


-- Таблицы cities
SELECT * FROM cities;


-- Таблица users
SELECT * FROM users;
DESC users;
SHOW CREATE TABLE users;
-- Правим логику дат создания и обновления
-- Найдем строки с нарушением логики
SELECT * FROM users WHERE created_at > updated_at;
-- Меняем даты обновления в проблемных местах
UPDATE users SET updated_at = NOW() WHERE created_at > updated_at;


-- Таблица profiles
SELECT * FROM profiles;
DESC profiles;
SHOW CREATE TABLE profiles;
-- Введем ограничение NOT NULL на столбцы restricted_mode и paid_memberships
ALTER TABLE profiles MODIFY restricted_mode BOOLEAN NOT NULL;
ALTER TABLE profiles MODIFY paid_memberships enum('default','premium')
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
DEFAULT 'default' NOT NULL COMMENT 'Тип подписки на сервис';
-- Отформатируем данные столбца net_adress с сетевым адресом 
-- персональных страниц пользователей
UPDATE profiles SET net_adress = CONCAT("https://music.yutu.com/channel/", LEFT(MD5(RAND()), 24));
-- Установим значение поумолчанию на столбец net_adress
ALTER TABLE profiles CHANGE COLUMN net_adress net_adress varchar(255)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'https://music.yutu.com/channel/'
NOT NULL COMMENT 'Ссылка на персональную страницу пользователя';
-- Отформатируем данные столбца restricted_mode в соответствии с возрастом
-- Посмотрим на возраст пользователей
SELECT user_id, FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday) )/ 365.25) AS age FROM profiles;
-- Откорректируем возраст пользователей для которых он сгенерирован менее 10 лет
UPDATE profiles SET birthday = DATE(NOW() - INTERVAL 18 YEAR) 
WHERE FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday) )/ 365.25) < 10;
-- Установим значение True для ограничения ненормативного контента для пользователей младше 18 лет
UPDATE profiles SET restricted_mode = TRUE 
WHERE FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday) )/ 365.25) < 18;
-- Добавим ограничение к столбцу birtday
ALTER TABLE profiles MODIFY birthday DATE NOT NULL;
-- Устанавливаем дату создания профиля равной дате создания пользователя
UPDATE profiles p SET p.created_at = (SELECT u.created_at FROM users u WHERE p.user_id = u.id);


-- Таблица artists
SELECT * FROM artists;
DESC artists;
SHOW CREATE TABLE artists;
-- Отформатируем данные столбца net_adress с сетевым адресом страниц исполнителей
UPDATE artists SET net_adress = CONCAT("https://music.yutu.com/artists/", LEFT(MD5(RAND()), 24));
-- Установим ограничение уникальности и значение поумолчанию на столбец net_adress
ALTER TABLE artists CHANGE COLUMN net_adress net_adress varchar(255)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
DEFAULT 'https://music.yutu.com/artists/'
NOT NULL COMMENT 'Ссылка на страницу исполнителя';
-- Устраняем нарушение логики дат создания и обновления в проблемных местах
UPDATE artists SET updated_at = NOW() WHERE created_at > updated_at;


-- Таблица media
SELECT * FROM media;
DESC media;
-- Откорректируем значения столбца file_path
CREATE TEMPORARY TABLE extensions_media(name VARCHAR(20));
INSERT INTO extensions_media VALUES ('.aac'), ('.flac');
UPDATE media 
SET file_path =
	CONCAT("https://dropbox.net/yutu_music/", id, '_', artist_id, '_',
	name, (SELECT name FROM extensions_media ORDER BY RAND() LIMIT 1)
	)
WHERE media_type = 'track';
TRUNCATE TABLE extensions_media;
INSERT INTO extensions_media VALUES ('.mp3'), ('.avi');
UPDATE media 
SET file_path =
	CONCAT("https://dropbox.net/yutu_music/", id, '_', artist_id, '_',
	name, (SELECT name FROM extensions_media ORDER BY RAND() LIMIT 1)
	)
WHERE media_type = 'music_video';
-- Сократим продолжительность медиафайлов в столбце size
UPDATE media 
SET size = TIME_FORMAT(
	CONCAT('00', ':0', MOD(MINUTE(media.size), 10), ':', SECOND(media.size)), '%H:%i:%s'
);
-- Там где продолжительность менее 1 минуты, добавим ещё 2
UPDATE media 
SET size = TIME_FORMAT(
	CONCAT('00', ':0', MINUTE(media.size) + 2, ':', SECOND(media.size)), '%H:%i:%s'
) WHERE media.size < '00:01:00';
-- Заменим пропуски в lyrics на NULL
UPDATE media SET lyrics = NULL WHERE lyrics = '';
-- Заполним столбец metadata
-- Создадим временную таблицу для внесения в метаданные жанра композиции
CREATE TEMPORARY TABLE genre(name VARCHAR(30));
INSERT INTO genre VALUES
('Blues'),
('Jazz'),
('Pop'),
('R&B'),
('Metal'),
('Folk'),
('Classical'),
('Latin');
SELECT * FROM genre;
-- Присваиваем жанр для каждого медиафайла
UPDATE media SET metadata = CONCAT('{"genre":"', 
  (SELECT name FROM genre ORDER BY RAND() LIMIT 1),
  '"}');
 -- Изменим тип данных столбца
DESC media;
ALTER TABLE media MODIFY metadata JSON;
-- Просмотрим присвоенные данные
SELECT JSON_EXTRACT(metadata, '$.genre') FROM media;
 -- Присвоим некоторым медиафайлам еще по одному определению жанра.
UPDATE media 
SET metadata = JSON_REPLACE(
metadata, '$.genre', 'Blues, Jazz'
) WHERE JSON_EXTRACT(metadata, '$.genre') = 'Blues' AND id > 50;
UPDATE media
SET metadata = JSON_REPLACE(
metadata, '$.genre', 'R&B, Pop'
) WHERE JSON_EXTRACT(metadata, '$.genre') = 'R&B' AND id < 50;
SELECT id, metadata FROM media;
-- Устраняем нарушение логики дат создания и обновления в проблемных местах
UPDATE media SET updated_at = NOW() WHERE created_at > updated_at;


-- Таблица playlists
SELECT * FROM playlists;
DESC playlists;
SHOW CREATE TABLE playlists;
-- Расставим значения в столбце artist_id произвольно
UPDATE playlists SET artist_id = FLOOR(1 + RAND()*100);
-- Отформатируем данные столбца image_path с адресом расположения файла обложки
UPDATE playlists 
SET image_path = CONCAT("https://dropbox.net/yutu_music/", 'file_', id, '.png');
-- Добавим для столбца image_path значение поумолчанию - путь к стандартной обложке
ALTER TABLE playlists MODIFY image_path VARCHAR(255) DEFAULT 'https://dropbox.net/yutu_music/default_image.png';
-- Заполним столбец metadata значениями с атрибутами альбомов
-- Измении формат данных столбца
ALTER TABLE playlists MODIFY metadata JSON;
-- Создадим временную таблицу с типами альбомов и заполним ее значениями
CREATE TEMPORARY TABLE play_types(name VARCHAR(2));
INSERT INTO play_types VALUES ('SP'), ('EP'), ('LP');
-- Присвоим всем альбомам в таблице playlists произвольные атрибуты
UPDATE playlists SET metadata =
JSON_OBJECT('play_type', (SELECT name FROM play_types ORDER BY RAND() LIMIT 1), 'date_release',
(SELECT DATE(created_at) - INTERVAL 10 year FROM users ORDER BY RAND()LIMIT 1))
WHERE playlist_type = 'album';
-- Восстановим логику дат создания записи в БД и выпуска альбома
UPDATE playlists SET created_at = CURRENT_TIMESTAMP() WHERE JSON_EXTRACT(metadata, '$.date_release') < DATE(created_at);
-- Отформатируем данные столбца net_adress с сетевым адресом страниц плейлистов
UPDATE playlists SET net_adress = CONCAT("https://music.yutu.com/playlists/", LEFT(MD5(RAND()), 24));
-- Установим ограничение уникальности и значение поумолчанию на столбец net_adress
ALTER TABLE playlists CHANGE COLUMN net_adress net_adress varchar(255)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
DEFAULT 'https://music.yutu.com/playlists/'
NOT NULL COMMENT 'Ссылка на страницу плейлиста';
-- Устраняем нарушение логики дат создания и обновления в проблемных местах
UPDATE playlists SET updated_at = NOW() WHERE created_at > updated_at;


-- Таблица playlists_objects
SELECT * FROM playlists_objects;
DESC playlists_objects;
-- Расставим значения в столбцах playlist_id и media_id произвольно
UPDATE playlists_objects SET
playlist_id = FLOOR(1 + RAND()*100),
media_id = FLOOR(1 + RAND()*100);
-- Приведем в порядок номера воспроизведения медиафайлов в плейлистах
-- Создадим временную таблицу для хранения результатов нумерации композиций
CREATE TEMPORARY TABLE order_track(id INT, num_track INT);
INSERT INTO order_track (
	SELECT id, ROW_NUMBER() OVER(PARTITION BY playlist_id) as num_play
	FROM playlists_objects po
);
SELECT * FROM order_track;
-- Обновим данные в столбце в соответствии с полученной нумерацией
UPDATE playlists_objects po
SET num_on_play = (
	SELECT ot.num_track 
	FROM order_track ot
	WHERE po.id = ot.id
);
-- Устраняем нарушение логики дат создания и обновления в проблемных местах
UPDATE playlists_objects SET updated_at = NOW() WHERE created_at > updated_at;


-- Таблица likes
SELECT * FROM likes;
DESC likes;
-- Приведем target_id в соответствие с количеством записей соответствующих таблиц
UPDATE likes SET target_id = FLOOR(1 + RAND() * (SELECT COUNT(id) FROM artists)) 
WHERE target_type = 'artist';
UPDATE likes SET target_id = FLOOR(1 + RAND() * (SELECT COUNT(id) FROM media)) 
WHERE target_type = 'media';
UPDATE likes SET target_id = FLOOR(1 + RAND() * (SELECT COUNT(id) FROM playlists)) 
WHERE target_type = 'playlist';


-- Таблица users_plays
SELECT * FROM users_plays up;
DESC users_plays;
-- Приведем target_id в соответствие с количеством записей соответствующих таблиц
UPDATE users_plays SET target_id = FLOOR(1 + RAND() * (SELECT COUNT(id) FROM media));
-- Сократим продолжительность прослушивания
UPDATE users_plays 
SET play_time = TIME_FORMAT(
	CONCAT('00', ':0', MOD(MINUTE(play_time), 10), ':', SECOND(play_time)), '%H:%i:%s'
);
-- Там где продолжительность прослушивания больше продолжительности
-- композиции или видео - сократим до этой величины
UPDATE users_plays up SET up.play_time =
(SELECT media.size FROM media WHERE media.id = up.target_id)
WHERE (up.play_time > 
	(SELECT media.size FROM media WHERE media.id = up.target_id)
);

