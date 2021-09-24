-- ���� ������ (��) yutu_music.

-- ������ �� �������� ��� ������
USE yutu_music;

-- �������___________________________________________________________________
SHOW TABLES;

DESC users;
SHOW INDEX FROM users;
-- ������ �� ��� � ������� ������������
CREATE INDEX users_first_name_last_name_idx ON users(first_name, last_name);

DESC profiles;
SHOW INDEX FROM profiles;

DESC artists;
SHOW INDEX FROM artists;
-- ������ �� ��� ����������� (��� ��� ������������ ����� ����� �� ������)
CREATE INDEX artists_name_idx ON artists(name);

DESC media;
SHOW INDEX FROM media;
-- ������ �� ��� ���������� (��� ��� ������������ ����� ����� �� ������)
CREATE INDEX media_name_idx ON media(name);

DESC playlists;
SHOW INDEX FROM playlists;
-- ������ �� ��� ��������� (��� ��� ������������ ����� ����� �� ������)
CREATE INDEX playlists_name_idx ON playlists(name);

-- �������������_________________________________________________________
SHOW TABLES;

SELECT * FROM users;
SELECT * FROM profiles;
-- ������������� � ����������� � ������������
-- �������� �������
SELECT u.id, u.first_name as 'fist_name', u.last_name as 'last name',
u.email as email,
p.gender, p.birthday, c.name as 'city', c2.name as 'country',
p.paid_memberships, p.restricted_mode,
u.created_at
FROM users u
JOIN profiles p 
ON u.id = p.user_id
JOIN cities c 
ON p.city_id = c.id 
JOIN countries c2 
ON c2.id = c.country_id;
-- �������� ������������� �� ������ �������
CREATE VIEW users_info AS
SELECT u.id, u.first_name as 'fist_name', u.last_name as 'last_name',
u.email as email,
p.gender, p.birthday, c.name as 'city', c2.name as 'country',
p.paid_memberships, p.restricted_mode,
u.created_at
FROM users u
JOIN profiles p 
ON u.id = p.user_id
JOIN cities c 
ON p.city_id = c.id 
JOIN countries c2 
ON c2.id = c.country_id;
-- ��������� � �������������
SELECT * FROM users_info;
-- DROP VIEW IF EXISTS users_info; 

-- ������������� �� ����������� �� �����������
-- �������� �������
SELECT DISTINCT a.id, a.user_id, a.name,
COUNT(m.id) OVER (PARTITION BY a.id, p.id, l.id) as count_media,
SUM(case when m.media_type = 'track' then 1 else 0 end) OVER (PARTITION BY a.id, p.id, l.id) as count_track,
SUM(case when m.media_type = 'music_video' then 1 else 0 end) OVER (PARTITION BY a.id, p.id, l.id) as count_video,
COUNT(p.id) OVER (PARTITION BY a.id, m.id, l.id) as count_album,
COUNT(l.id) OVER (PARTITION BY a.id, m.id, p.id) as count_likes,
a.created_at
FROM artists a
LEFT JOIN media m 
ON m.artist_id = a.id
LEFT JOIN playlists p 
ON p.artist_id = a.id AND p.playlist_type = 'album'
LEFT JOIN likes l 
ON l.target_id = a.id AND l.target_type = 'artist'
ORDER BY a.id;
-- �������� ������������� �� ������ �������
CREATE VIEW artists_stats AS
SELECT DISTINCT a.id, a.user_id, a.name,
COUNT(m.id) OVER (PARTITION BY a.id, p.id, l.id) as count_media,
SUM(case when m.media_type = 'track' then 1 else 0 end) OVER (PARTITION BY a.id, p.id, l.id) as count_track,
SUM(case when m.media_type = 'music_video' then 1 else 0 end) OVER (PARTITION BY a.id, p.id, l.id) as count_video,
COUNT(p.id) OVER (PARTITION BY a.id, m.id, l.id) as count_album,
COUNT(l.id) OVER (PARTITION BY a.id, m.id, p.id) as count_likes,
a.created_at
FROM artists a
LEFT JOIN media m 
ON m.artist_id = a.id
LEFT JOIN playlists p 
ON p.artist_id = a.id AND p.playlist_type = 'album'
LEFT JOIN likes l 
ON l.target_id = a.id AND l.target_type = 'artist'
ORDER BY a.id;
-- ��������� � �������������
SELECT * FROM artists_stats;
DROP VIEW IF EXISTS artists_stats;

-- �������__________________________________________________________________________________

-- ������� � ��������� ��������� ������������� ��� ������ ������ � 7 �� 10 ����.
SELECT DISTINCT m.metadata ->> "$.genre" AS genre,
COUNT(user_id) OVER (PARTITION BY m.metadata ->> "$.genre")
FROM users_plays up
JOIN media m 
ON up.target_id = m.id
WHERE (up.play_time >= '00:00:40') AND 
(TIME(up.created_at) >= '07:00:00') AND (TIME(up.created_at) <= '10:00:00');

-- ������� ����� ������������� �� ���������� �������
SELECT
FLOOR(TIMESTAMPDIFF(YEAR, birthday, NOW()) / 10) AS age_group,
COUNT(ui.id)
FROM users_info ui
GROUP BY age_group
ORDER BY age_group;

-- ������� ������������ ���������� ������������� �����
SELECT up.target_id, up.play_time, up.created_at, 
m.artist_id, m.media_type, m.metadata ->> "$.genre" AS genre 
FROM users_plays up 
JOIN media m 
ON m.id = up.target_id 
WHERE up.user_id = 15 AND up.play_time > '00:00:40';

-- ������� �����, ������������ �� ��������� �������� ��������������� ������������� �����
SELECT ma.id, ma.artist_id, ma.metadata ->> "$.genre" AS genre FROM media ma
WHERE (ma.metadata ->> "$.genre") = (SELECT genre FROM (
	SELECT 
	m.metadata ->> "$.genre" AS genre,
	COUNT(up.target_id) AS count_play
	FROM users_plays up 
	JOIN media m 
	ON m.id = up.target_id 
	WHERE up.user_id = 15 AND up.play_time > '00:00:40'
	GROUP BY m.metadata ->> "$.genre"
	ORDER BY (- count_play) LIMIT 1
) AS genre_prf);

-- ������� ����� c ��������� ����� ��������� �������������� �� 20 ��� ����������
SELECT DISTINCT
COUNT(pl.id) OVER (PARTITION BY ui.country) AS count_pl,
ui.country 
FROM playlists pl
JOIN artists a 
ON a.id = pl.artist_id 
JOIN users_info ui 
ON ui.id = a.user_id 
WHERE pl.playlist_type = 'playlist' AND TIMESTAMPDIFF(YEAR, ui.birthday, NOW()) <= 20
ORDER BY (count_pl);