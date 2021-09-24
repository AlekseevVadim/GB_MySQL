-- ���� ������ (��) yutu_music.

-- ������ ��
CREATE DATABASE yutu_music;

-- ������ �� �������� ��� ������
USE yutu_music;

-- �������� ������
SHOW TABLES;

-- ������� �������������
-- DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������", 
  first_name VARCHAR(100) NOT NULL COMMENT "��� ������������",
  last_name VARCHAR(100) NOT NULL COMMENT "������� ������������",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "�����",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "������������"; 

-- SHOW CREATE TABLE users;

-- ������� ��������
-- DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "������ �� ������������� ������������", 
  gender ENUM('Male', 'Female', 'None') NOT NULL COMMENT "���",
  birthday DATE COMMENT "���� ��������",
  city_id INT UNSIGNED COMMENT "������ �� ����� ����������",
  paid_memberships ENUM('default', 'premium') COMMENT "��� �������� �� ������",
  restricted_mode BOOLEAN COMMENT "����� ����������� �������������� ��������",
  net_adress VARCHAR(255) NOT NULL COMMENT "������ �� ������������ �������� ������������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "�������"; 

-- SHOW CREATE TABLE profiles;

-- ������� �������
-- DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL,
  country_id INT UNSIGNED
) COMMENT "������";

-- ������� �����
-- DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL
) COMMENT "������";

-- ������� ������������
-- DROP TABLE IF EXISTS artists;
CREATE TABLE artists (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������",
  user_id INT UNSIGNED NOT NULL COMMENT "������ �� ������� users",
  name VARCHAR(100) NOT NULL COMMENT "������������ �����������",
  description TEXT COMMENT "�������� �����������",
  net_adress VARCHAR(255) NOT NULL COMMENT "������ �� �������� �����������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "�����������"; 

-- SHOW CREATE TABLE artists;

-- ������� �����������
-- DROP TABLE IF EXISTS media;
CREATE TABLE media (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������",
  name VARCHAR(100) NOT NULL COMMENT "������������",
  artist_id INT UNSIGNED NOT NULL COMMENT "������ �� �����������",
  file_path VARCHAR(255) NOT NULL COMMENT "���� � �����",
  media_type ENUM('track','music_video') NOT NULL,
  size TIME NOT NULL COMMENT "����������������� ����������",
  exp_content BOOLEAN COMMENT "������� �������������� ��������",
  metadata JSON DEFAULT NULL COMMENT "���������� �����",
  lyrics TEXT COMMENT "����� ����������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "����������";

-- SHOW CREATE TABLE media;

-- ������� ����������
-- DROP TABLE IF EXISTS playlists;
CREATE TABLE playlists (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������", 
  name VARCHAR(100) NOT NULL COMMENT "������������ ���������",
  artist_id INT UNSIGNED NOT NULL COMMENT "������ �� ������",
  description TEXT COMMENT "�������� ���������",
  playlist_type enum('playlist','album') NOT NULL DEFAULT 'playlist' COMMENT "��� ���������",
  metadata JSON DEFAULT NULL COMMENT "���������� �����",
  image_path VARCHAR(255) NOT NULL COMMENT "���� � ����� �������",
  security_type enum('private','public','link') NOT NULL COMMENT "��� ������� � ���������",
  net_adress VARCHAR(255) NOT NULL COMMENT "������ �� �������� �������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "���������"; 

-- SHOW CREATE TABLE playlists;

-- ������� ����������� ����������
-- DROP TABLE IF EXISTS playlists_objects;
CREATE TABLE playlists_objects (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT "������������� ������",
  playlist_id INT UNSIGNED NOT NULL COMMENT "������ �� ��������",
  media_id INT UNSIGNED NOT NULL COMMENT "������ �� ������������� �����",
  num_on_play INT UNSIGNED NOT NULL DEFAULT '0',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������",
  PRIMARY KEY (id) COMMENT "��������� ����"
) COMMENT "������ ����������";

-- SHOW CREATE TABLE playlists_objects;

-- ������� ������
-- DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������",
  user_id INT UNSIGNED NOT NULL COMMENT "������ �� ������������",
  target_id INT UNSIGNED NOT NULL COMMENT "������ �� ������������� ������� �����",
  target_type ENUM('media','playlist','artist') NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- SHOW CREATE TABLE likes;

-- ������� �������������
-- DROP TABLE IF EXISTS users_plays;
CREATE TABLE users_plays (
  user_id INT UNSIGNED NOT NULL COMMENT "������ �� ������������",
  target_id INT UNSIGNED NOT NULL COMMENT "������ �� ������������� ������������� �����",
  play_time TIME NOT NULL COMMENT "����������������� �������������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",
  PRIMARY KEY (user_id, created_at)
);

-- SHOW CREATE TABLE users_plays;
