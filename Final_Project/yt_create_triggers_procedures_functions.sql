-- База данных (БД) yutu_music.

-- Делаем БД активной для работы
USE yutu_music;

-- Создаем тригеры

-- функция проверки существования строки с соответствующим идентификатором в таблице,
-- принимающая идентификатор и некоторую ссылку на таблицу для проверки, и возвращающая boolean
DROP FUNCTION IF EXISTS is_row_exists;
DELIMITER //
CREATE FUNCTION is_row_exists (target_id INT, target_type VARCHAR(50))
RETURNS BOOLEAN READS SQL DATA
BEGIN
  CASE target_type
    WHEN 'media' THEN
      RETURN EXISTS(SELECT 1 FROM media WHERE id = target_id);
    WHEN 'artist' THEN 
      RETURN EXISTS(SELECT 1 FROM artists WHERE id = target_id);
    WHEN 'playlist' THEN
      RETURN EXISTS(SELECT 1 FROM playlists WHERE id = target_id);
    ELSE 
      RETURN FALSE;
   END CASE;
END//
DELIMITER ;

-- Триггер для проверки ссылочной целостности столбца target_id таблицы likes
DROP TRIGGER IF EXISTS likes_validation;
DELIMITER //
CREATE TRIGGER likes_validation BEFORE INSERT ON likes
FOR EACH ROW 
-- "FOR EACH ROW" - "для каждой вставляемой строки"
BEGIN
  IF NOT is_row_exists(NEW.target_id, NEW.target_type) THEN
    SIGNAL SQLSTATE "45000"
    SET MESSAGE_TEXT = "Error adding like! Target table doesn't contain row id provided!";
  END IF;
END//
DELIMITER ;

-- Триггер для проверки существования записи в таблице likes перед вставкой
DROP TRIGGER IF EXISTS check_insert;
DELIMITER //
CREATE TRIGGER check_insert BEFORE INSERT ON likes
FOR EACH ROW 
-- "FOR EACH ROW" - "для каждой вставляемой строки"
BEGIN
	IF EXISTS(SELECT 1 FROM likes WHERE (user_id = NEW.user_id) AND (target_id = NEW.target_id) AND (target_type = NEW.target_type))
	THEN
		SET @ex_id = (SELECT id FROM likes WHERE (user_id = NEW.user_id) AND (target_id = NEW.target_id) AND (target_type = NEW.target_type));
		SET @message_text = CONCAT('Row already exists! likes.id = ', @ex_id);
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = @message_text;
	END IF;
END//
DELIMITER ;

-- Проверка
SELECT * FROM likes;
DESC likes;
INSERT INTO likes (user_id, target_id, target_type) VALUES (70, 109, 'artist');-- (91, 62, 'playlist');
-- DELETE FROM likes WHERE id = 102;

-- Триггеры вставки и обновления значение profiles.restricted_mode в соответствии с возрастом пользователя
DESC profiles;

DROP TRIGGER IF EXISTS insert_age_validation;
DELIMITER //
CREATE TRIGGER insert_age_validation BEFORE INSERT ON profiles
FOR EACH ROW 
-- "FOR EACH ROW" - "для каждой вставляемой строки"
BEGIN
  IF (FLOOR((TO_DAYS(NOW()) - TO_DAYS(NEW.birthday) )/ 365.25) < 18) AND (NEW.restricted_mode = FALSE) THEN
    SIGNAL SQLSTATE "45000"
    SET MESSAGE_TEXT = "User is under 18 years old! Restricted_mode cannot be set FALSE.";
  END IF;
END//
DELIMITER ;

DROP TRIGGER IF EXISTS update_age_validation;
DELIMITER //
CREATE TRIGGER update_age_validation BEFORE UPDATE ON profiles
FOR EACH ROW 
-- "FOR EACH ROW" - "для каждой вставляемой строки"
BEGIN
  IF (FLOOR((TO_DAYS(NOW()) - TO_DAYS(NEW.birthday) )/ 365.25) < 18) AND (NEW.restricted_mode = FALSE) THEN
    SIGNAL SQLSTATE "45000"
    SET MESSAGE_TEXT = "User is under 18 years old! Restricted_mode cannot be set FALSE.";
  END IF;
END//
DELIMITER ;

-- Проверка 
SELECT * FROM profiles;
INSERT INTO users VALUES (default, 'Vadim', 'Alekseev', 'vadima@gmail.com', default, default);
INSERT INTO profiles(user_id, gender, birthday, paid_memberships, restricted_mode, net_adress)
VALUES(101, 'Male', DATE(NOW() - INTERVAL 10 YEAR), default, TRUE,
default);
DELETE FROM profiles WHERE user_id = 102;
UPDATE profiles SET restricted_mode = FALSE WHERE user_id = 101;


-- Создадим функцию для генерации псевдоуникального 36-значного номера
DROP FUNCTION IF EXISTS generate_net;
DELIMITER //
CREATE FUNCTION generate_net()
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
SET @return_net = CONCAT_WS(
'-',
LEFT(MD5(RAND()), 8),
LEFT(MD5(RAND()), 4),
LEFT(MD5(RAND()), 4),
LEFT(MD5(RAND()), 4),
LEFT(MD5(RAND()), 12)
);
RETURN @return_net;
END //
DELIMITER ;

-- Триггер для форматирования net_adress таблицы profiles
DROP TRIGGER IF EXISTS insert_net_profiles;
DELIMITER //
CREATE TRIGGER insert_net_profiles BEFORE INSERT ON profiles
FOR EACH ROW 
BEGIN
  IF 
  (LEFT(NEW.net_adress, 31) != 'https://music.yutu.com/channel/') OR
  (LENGTH(NEW.net_adress) != 67)
  THEN
  	SET NEW.net_adress = CONCAT('https://music.yutu.com/channel/', generate_net());
  END IF;
END//
DELIMITER ;

-- Проверка
INSERT INTO users VALUES (default, 'German', 'Alekseev', 'german.a@gmail.com', default, default);
SELECT * FROM users;
INSERT INTO profiles(user_id, gender, birthday, paid_memberships, restricted_mode, net_adress)
VALUES(102, 'Male', DATE(NOW() - INTERVAL 19 YEAR), default, FALSE,
default);
 SELECT net_adress FROM profiles WHERE user_id = 102;
-- DELETE FROM profiles WHERE user_id = 102;

-- Триггер для форматирования net_adress таблицы artists
DROP TRIGGER IF EXISTS insert_net_artists;
DELIMITER //
CREATE TRIGGER insert_net_artists BEFORE INSERT ON artists
FOR EACH ROW 
BEGIN
  IF 
  (LEFT(NEW.net_adress, 31) != 'https://music.yutu.com/artists/') OR
  (LENGTH(NEW.net_adress) != 67)
  THEN
  	SET NEW.net_adress = CONCAT('https://music.yutu.com/artists/', generate_net());
  END IF;
END//
DELIMITER ;

-- проверка 
SELECT * FROM artists;
INSERT INTO artists VALUES (default, '101', 'Alekseev', 'Unknow artist', default, default, default);

-- Триггер для форматирования net_adress таблицы playlists
DROP TRIGGER IF EXISTS insert_net_playlists;
DELIMITER //
CREATE TRIGGER insert_net_playlists BEFORE INSERT ON playlists
FOR EACH ROW 
BEGIN
  IF 
  (LEFT(NEW.net_adress, 33) != 'https://music.yutu.com/playlists/') OR
  (LENGTH(NEW.net_adress) != 69)
  THEN
  	SET NEW.net_adress = CONCAT('https://music.yutu.com/playlists/', generate_net());
  END IF;
END//
DELIMITER ;

-- проверка 
SELECT * FROM playlists;
INSERT INTO playlists VALUES (
	default, 'Playlists for running', 99,
	'This playlists was created by runner.',
	default, NULL, default, 'public', default,
	default, default);

-- Триггер для вставки медиафайлов в конец плейлиста
DROP TRIGGER IF EXISTS insert_before_playl_obj;
DELIMITER //
CREATE TRIGGER insert_before_playl_obj BEFORE INSERT ON playlists_objects
FOR EACH ROW 
BEGIN
	SET @max_num = (SELECT MAX(num_on_play) FROM playlists_objects 
		WHERE (playlist_id = NEW.playlist_id)
	);
  	IF ISNULL(@max_num)
  	THEN
  		SET NEW.num_on_play = 1;
	ELSEIF (NEW.num_on_play > @max_num) OR (NEW.num_on_play = 0)
  	THEN
  		SET NEW.num_on_play = @max_num + 1;
  	END IF;
END//
DELIMITER ;

-- Проверка 
SELECT @max_num;
SELECT * FROM playlists_objects po ;
INSERT INTO playlists_objects VALUES (default, 12, 2, default, default, default);
SELECT * FROM playlists_objects WHERE playlist_id = 12;

-- Напишем процедуру для вставки медиа в плейлист с сохранением порядка
DROP PROCEDURE IF EXISTS insert_playlist_obj;
DELIMITER //
CREATE PROCEDURE insert_playlist_obj (id_play_list INT, id_media INT, num INT)
BEGIN
	SET @time_insert = NOW();
	INSERT INTO playlists_objects VALUES (default, id_play_list, id_media, num, default, default);

	IF (SELECT COUNT(*) FROM playlists_objects 
	WHERE playlist_id = id_play_list AND num_on_play = num
	) > 1
	THEN
		UPDATE playlists_objects SET num_on_play = num_on_play + 1
		WHERE (playlist_id = id_play_list) AND (num_on_play >= num) AND (created_at < @time_insert);
	END IF;
END//
DELIMITER ;

-- Проверка
-- Теперь для сохранения порядка вставка должна осуществляться через процедуру
CALL insert_playlist_obj(15, 30, 0);
SELECT * FROM playlists_objects WHERE playlist_id = 15;
DELETE FROM playlists_objects WHERE (playlist_id = 15);

-- Триггер для корректировки num_on_play при обновлении таблицы и переносе медиа в конец воспроизведения
DROP TRIGGER IF EXISTS update_before_playl_obj;
DELIMITER //
CREATE TRIGGER update_before_playl_obj BEFORE UPDATE ON playlists_objects
FOR EACH ROW 
BEGIN
	SET @max_num = (SELECT COUNT(*) FROM playlists_objects 
	WHERE playlist_id = NEW.playlist_id);
	IF NEW.num_on_play != OLD.num_on_play
	THEN
  		IF NEW.num_on_play > @max_num
  		THEN
  			SET NEW.num_on_play = @max_num;
  		END IF;
  	END IF;
END//
DELIMITER ;

-- Напишем процедуру для изменения порядка медиа в плейлисте
DROP PROCEDURE IF EXISTS update_num_playlist_obj;
DELIMITER //
CREATE PROCEDURE update_num_playlist_obj (target_id INT, target_num INT)
BEGIN
	SET @num_old = (SELECT num_on_play FROM playlists_objects WHERE id = target_id);
	UPDATE playlists_objects SET num_on_play = target_num
	WHERE id = target_id;
	SET @num_new = (SELECT num_on_play FROM playlists_objects WHERE id = target_id);
	SET @plyl_id = (SELECT playlist_id FROM playlists_objects WHERE id = target_id);

	IF (SELECT COUNT(*) FROM playlists_objects 
	WHERE playlist_id = @plyl_id
	AND num_on_play = @num_new
	) > 1
	THEN
		IF @num_old < @num_new
		THEN 
			UPDATE playlists_objects SET num_on_play = num_on_play - 1
			WHERE (playlist_id = @plyl_id) AND (num_on_play <= @num_new) AND (num_on_play > @num_old) AND (id != target_id);
		ELSEIF @num_old > @num_new
		THEN
			UPDATE playlists_objects SET num_on_play = num_on_play + 1
			WHERE (playlist_id = @plyl_id) AND (num_on_play >= @num_new) AND (id != target_id);
		END IF;
	END IF;
END//
DELIMITER ;

-- Проверка
SELECT * FROM playlists_objects WHERE playlist_id = 15;
UPDATE playlists_objects SET num_on_play = 2 WHERE id = 105;
CALL update_num_playlist_obj(103, 8);


-- Напишем процедуру для удаления из плейлиста
DROP PROCEDURE IF EXISTS delete_playlist_obj;
DELIMITER //
CREATE PROCEDURE delete_playlist_obj (target_id INT)
BEGIN
	SET @num_old = (SELECT num_on_play FROM playlists_objects WHERE id = target_id);
	SET @plyl_id = (SELECT playlist_id FROM playlists_objects WHERE id = target_id);

	DELETE FROM playlists_objects WHERE id = target_id;

	UPDATE playlists_objects SET num_on_play = num_on_play - 1
	WHERE (playlist_id = @plyl_id) AND (num_on_play > @num_old);
	
END//
DELIMITER ;

-- Проверка
SELECT * FROM playlists_objects WHERE playlist_id = 15;
CALL delete_playlist_obj(107);

-- Просмотр созданного 
SHOW TRIGGERS;
SHOW PROCEDURE STATUS;

