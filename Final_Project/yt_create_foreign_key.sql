-- ���� ������ (��) yutu_music.

-- ������ �� �������� ��� ������
USE yutu_music;

-- ������� ������� �����
-- ��� ������� profiles
DESC profiles;

ALTER TABLE profiles
ADD CONSTRAINT profiles_user_id_fk
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE CASCADE;
-- ��� �������� ���������� �����������
-- ALTER TABLE profiles DROP CONSTRAINT profiles_user_id_fk;
ALTER TABLE profiles
ADD CONSTRAINT profiles_city_id_fk
FOREIGN KEY (city_id)
REFERENCES cities(id)
ON DELETE SET NULL;

-- ��� ������� cities
DESC cities;

ALTER TABLE cities
ADD CONSTRAINT cities_countries_id_fk
FOREIGN KEY (country_id)
REFERENCES countries(id)
ON DELETE SET NULL;

-- ��� artists
DESC artists;

ALTER TABLE artists
ADD CONSTRAINT artists_users_id_fk
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE RESTRICT;

-- ��� ������� media
DESC media;

ALTER TABLE media
ADD CONSTRAINT media_artist_id_fk
FOREIGN KEY (artist_id)
REFERENCES artists(id)
ON DELETE RESTRICT;

-- ALTER TABLE media DROP CONSTRAINT media_artist_id_fk;

-- ��� ������� playlists
DESC playlists;

ALTER TABLE playlists
ADD CONSTRAINT playlists_artist_id_fk
FOREIGN KEY (artist_id)
REFERENCES artists(id)
ON DELETE RESTRICT;

-- ALTER TABLE playlists DROP CONSTRAINT playlists_artist_id_fk;

-- ��� ������� playlists_ojects
DESC playlists_objects;

ALTER TABLE playlists_objects
ADD CONSTRAINT playlists_obj_playlist_id_fk
FOREIGN KEY (playlist_id)
REFERENCES playlists(id)
ON DELETE RESTRICT;

-- ALTER TABLE playlists_objects DROP CONSTRAINT playlists_obj_playlist_id_fk;

ALTER TABLE playlists_objects
ADD CONSTRAINT playlists_obj_media_id_fk
FOREIGN KEY (media_id)
REFERENCES media(id)
ON DELETE RESTRICT;

--  ALTER TABLE playlists_objects DROP CONSTRAINT playlists_obj_media_id_fk;

-- ��� ������� users_plays
DESC users_plays ;

ALTER TABLE users_plays
ADD CONSTRAINT users_plays_user_id_fk
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE CASCADE;
-- ��� �������� ���������� �����������
-- ALTER TABLE users_plays DROP CONSTRAINT users_plays_user_id_fk;

ALTER TABLE users_plays
ADD CONSTRAINT users_plays_target_id_fk
FOREIGN KEY (target_id)
REFERENCES media(id)
ON DELETE CASCADE;

-- ��� ������� likes
DESC likes;

ALTER TABLE likes
ADD CONSTRAINT likes_user_id_fk
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE CASCADE;