-- ���� ������ (��) yutu_music.

-- ������ �� �������� ��� ������
USE yutu_music;

-- ��������, ��������� � ��������� �������������� �������� 'http://filldb.info' ������
SHOW TABLES;


-- ������� countries
SELECT * FROM countries;


-- ������� cities
SELECT * FROM cities;


-- ������� users
SELECT * FROM users;
DESC users;
SHOW CREATE TABLE users;
-- ������ ������ ��� �������� � ����������
-- ������ ������ � ���������� ������
SELECT * FROM users WHERE created_at > updated_at;
-- ������ ���� ���������� � ���������� ������
UPDATE users SET updated_at = NOW() WHERE created_at > updated_at;


-- ������� profiles
SELECT * FROM profiles;
DESC profiles;
SHOW CREATE TABLE profiles;
-- ������ ����������� NOT NULL �� ������� restricted_mode � paid_memberships
ALTER TABLE profiles MODIFY restricted_mode BOOLEAN NOT NULL;
ALTER TABLE profiles MODIFY paid_memberships enum('default','premium')
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
DEFAULT 'default' NOT NULL COMMENT '��� �������� �� ������';
-- ������������� ������ ������� net_adress � ������� ������� 
-- ������������ ������� �������������
UPDATE profiles SET net_adress = CONCAT("https://music.yutu.com/channel/", LEFT(MD5(RAND()), 24));
-- ��������� �������� ����������� �� ������� net_adress
ALTER TABLE profiles CHANGE COLUMN net_adress net_adress varchar(255)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'https://music.yutu.com/channel/'
NOT NULL COMMENT '������ �� ������������ �������� ������������';
-- ������������� ������ ������� restricted_mode � ������������ � ���������
-- ��������� �� ������� �������������
SELECT user_id, FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday) )/ 365.25) AS age FROM profiles;
-- �������������� ������� ������������� ��� ������� �� ������������ ����� 10 ���
UPDATE profiles SET birthday = DATE(NOW() - INTERVAL 18 YEAR) 
WHERE FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday) )/ 365.25) < 10;
-- ��������� �������� True ��� ����������� �������������� �������� ��� ������������� ������ 18 ���
UPDATE profiles SET restricted_mode = TRUE 
WHERE FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday) )/ 365.25) < 18;
-- ������� ����������� � ������� birtday
ALTER TABLE profiles MODIFY birthday DATE NOT NULL;
-- ������������� ���� �������� ������� ������ ���� �������� ������������
UPDATE profiles p SET p.created_at = (SELECT u.created_at FROM users u WHERE p.user_id = u.id);


-- ������� artists
SELECT * FROM artists;
DESC artists;
SHOW CREATE TABLE artists;
-- ������������� ������ ������� net_adress � ������� ������� ������� ������������
UPDATE artists SET net_adress = CONCAT("https://music.yutu.com/artists/", LEFT(MD5(RAND()), 24));
-- ��������� ����������� ������������ � �������� ����������� �� ������� net_adress
ALTER TABLE artists CHANGE COLUMN net_adress net_adress varchar(255)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
DEFAULT 'https://music.yutu.com/artists/'
NOT NULL COMMENT '������ �� �������� �����������';
-- ��������� ��������� ������ ��� �������� � ���������� � ���������� ������
UPDATE artists SET updated_at = NOW() WHERE created_at > updated_at;


-- ������� media
SELECT * FROM media;
DESC media;
-- �������������� �������� ������� file_path
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
-- �������� ����������������� ����������� � ������� size
UPDATE media 
SET size = TIME_FORMAT(
	CONCAT('00', ':0', MOD(MINUTE(media.size), 10), ':', SECOND(media.size)), '%H:%i:%s'
);
-- ��� ��� ����������������� ����� 1 ������, ������� ��� 2
UPDATE media 
SET size = TIME_FORMAT(
	CONCAT('00', ':0', MINUTE(media.size) + 2, ':', SECOND(media.size)), '%H:%i:%s'
) WHERE media.size < '00:01:00';
-- ������� �������� � lyrics �� NULL
UPDATE media SET lyrics = NULL WHERE lyrics = '';
-- �������� ������� metadata
-- �������� ��������� ������� ��� �������� � ���������� ����� ����������
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
-- ����������� ���� ��� ������� ����������
UPDATE media SET metadata = CONCAT('{"genre":"', 
  (SELECT name FROM genre ORDER BY RAND() LIMIT 1),
  '"}');
 -- ������� ��� ������ �������
DESC media;
ALTER TABLE media MODIFY metadata JSON;
-- ���������� ����������� ������
SELECT JSON_EXTRACT(metadata, '$.genre') FROM media;
 -- �������� ��������� ����������� ��� �� ������ ����������� �����.
UPDATE media 
SET metadata = JSON_REPLACE(
metadata, '$.genre', 'Blues, Jazz'
) WHERE JSON_EXTRACT(metadata, '$.genre') = 'Blues' AND id > 50;
UPDATE media
SET metadata = JSON_REPLACE(
metadata, '$.genre', 'R&B, Pop'
) WHERE JSON_EXTRACT(metadata, '$.genre') = 'R&B' AND id < 50;
SELECT id, metadata FROM media;
-- ��������� ��������� ������ ��� �������� � ���������� � ���������� ������
UPDATE media SET updated_at = NOW() WHERE created_at > updated_at;


-- ������� playlists
SELECT * FROM playlists;
DESC playlists;
SHOW CREATE TABLE playlists;
-- ��������� �������� � ������� artist_id �����������
UPDATE playlists SET artist_id = FLOOR(1 + RAND()*100);
-- ������������� ������ ������� image_path � ������� ������������ ����� �������
UPDATE playlists 
SET image_path = CONCAT("https://dropbox.net/yutu_music/", 'file_', id, '.png');
-- ������� ��� ������� image_path �������� ����������� - ���� � ����������� �������
ALTER TABLE playlists MODIFY image_path VARCHAR(255) DEFAULT 'https://dropbox.net/yutu_music/default_image.png';
-- �������� ������� metadata ���������� � ���������� ��������
-- ������� ������ ������ �������
ALTER TABLE playlists MODIFY metadata JSON;
-- �������� ��������� ������� � ������ �������� � �������� �� ����������
CREATE TEMPORARY TABLE play_types(name VARCHAR(2));
INSERT INTO play_types VALUES ('SP'), ('EP'), ('LP');
-- �������� ���� �������� � ������� playlists ������������ ��������
UPDATE playlists SET metadata =
JSON_OBJECT('play_type', (SELECT name FROM play_types ORDER BY RAND() LIMIT 1), 'date_release',
(SELECT DATE(created_at) - INTERVAL 10 year FROM users ORDER BY RAND()LIMIT 1))
WHERE playlist_type = 'album';
-- ����������� ������ ��� �������� ������ � �� � ������� �������
UPDATE playlists SET created_at = CURRENT_TIMESTAMP() WHERE JSON_EXTRACT(metadata, '$.date_release') < DATE(created_at);
-- ������������� ������ ������� net_adress � ������� ������� ������� ����������
UPDATE playlists SET net_adress = CONCAT("https://music.yutu.com/playlists/", LEFT(MD5(RAND()), 24));
-- ��������� ����������� ������������ � �������� ����������� �� ������� net_adress
ALTER TABLE playlists CHANGE COLUMN net_adress net_adress varchar(255)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
DEFAULT 'https://music.yutu.com/playlists/'
NOT NULL COMMENT '������ �� �������� ���������';
-- ��������� ��������� ������ ��� �������� � ���������� � ���������� ������
UPDATE playlists SET updated_at = NOW() WHERE created_at > updated_at;


-- ������� playlists_objects
SELECT * FROM playlists_objects;
DESC playlists_objects;
-- ��������� �������� � �������� playlist_id � media_id �����������
UPDATE playlists_objects SET
playlist_id = FLOOR(1 + RAND()*100),
media_id = FLOOR(1 + RAND()*100);
-- �������� � ������� ������ ��������������� ����������� � ����������
-- �������� ��������� ������� ��� �������� ����������� ��������� ����������
CREATE TEMPORARY TABLE order_track(id INT, num_track INT);
INSERT INTO order_track (
	SELECT id, ROW_NUMBER() OVER(PARTITION BY playlist_id) as num_play
	FROM playlists_objects po
);
SELECT * FROM order_track;
-- ������� ������ � ������� � ������������ � ���������� ����������
UPDATE playlists_objects po
SET num_on_play = (
	SELECT ot.num_track 
	FROM order_track ot
	WHERE po.id = ot.id
);
-- ��������� ��������� ������ ��� �������� � ���������� � ���������� ������
UPDATE playlists_objects SET updated_at = NOW() WHERE created_at > updated_at;


-- ������� likes
SELECT * FROM likes;
DESC likes;
-- �������� target_id � ������������ � ����������� ������� ��������������� ������
UPDATE likes SET target_id = FLOOR(1 + RAND() * (SELECT COUNT(id) FROM artists)) 
WHERE target_type = 'artist';
UPDATE likes SET target_id = FLOOR(1 + RAND() * (SELECT COUNT(id) FROM media)) 
WHERE target_type = 'media';
UPDATE likes SET target_id = FLOOR(1 + RAND() * (SELECT COUNT(id) FROM playlists)) 
WHERE target_type = 'playlist';


-- ������� users_plays
SELECT * FROM users_plays up;
DESC users_plays;
-- �������� target_id � ������������ � ����������� ������� ��������������� ������
UPDATE users_plays SET target_id = FLOOR(1 + RAND() * (SELECT COUNT(id) FROM media));
-- �������� ����������������� �������������
UPDATE users_plays 
SET play_time = TIME_FORMAT(
	CONCAT('00', ':0', MOD(MINUTE(play_time), 10), ':', SECOND(play_time)), '%H:%i:%s'
);
-- ��� ��� ����������������� ������������� ������ �����������������
-- ���������� ��� ����� - �������� �� ���� ��������
UPDATE users_plays up SET up.play_time =
(SELECT media.size FROM media WHERE media.id = up.target_id)
WHERE (up.play_time > 
	(SELECT media.size FROM media WHERE media.id = up.target_id)
);

