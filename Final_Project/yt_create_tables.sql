-- База данных (БД) yutu_music.

-- Создаём БД
CREATE DATABASE yutu_music;

-- Делаем БД активной для работы
USE yutu_music;

-- Создание таблиц
SHOW TABLES;

-- Таблица пользователей
-- DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пользователи"; 

-- SHOW CREATE TABLE users;

-- Таблица профилей
-- DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Ссылка на идентификатор пользователя", 
  gender ENUM('Male', 'Female', 'None') NOT NULL COMMENT "Пол",
  birthday DATE COMMENT "Дата рождения",
  city_id INT UNSIGNED COMMENT "Ссылка на город проживания",
  paid_memberships ENUM('default', 'premium') COMMENT "Тип подписки на сервис",
  restricted_mode BOOLEAN COMMENT "Режим ограничения ненормативного контента",
  net_adress VARCHAR(255) NOT NULL COMMENT "Ссылка на персональную страницу пользователя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Профили"; 

-- SHOW CREATE TABLE profiles;

-- Таблица городов
-- DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL,
  country_id INT UNSIGNED
) COMMENT "Города";

-- Таблица стран
-- DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL
) COMMENT "Страны";

-- Таблица исполнителей
-- DROP TABLE IF EXISTS artists;
CREATE TABLE artists (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на таблицу users",
  name VARCHAR(100) NOT NULL COMMENT "Наименование исполнителя",
  description TEXT COMMENT "Описание исполнителя",
  net_adress VARCHAR(255) NOT NULL COMMENT "Ссылка на страницу исполнителя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Исполнители"; 

-- SHOW CREATE TABLE artists;

-- Таблица медиафайлов
-- DROP TABLE IF EXISTS media;
CREATE TABLE media (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(100) NOT NULL COMMENT "Наименование",
  artist_id INT UNSIGNED NOT NULL COMMENT "Ссылка на исполнителя",
  file_path VARCHAR(255) NOT NULL COMMENT "Путь к файлу",
  media_type ENUM('track','music_video') NOT NULL,
  size TIME NOT NULL COMMENT "Продолжительность композиции",
  exp_content BOOLEAN COMMENT "Наличие ненормативного контента",
  metadata JSON DEFAULT NULL COMMENT "Метаданные файла",
  lyrics TEXT COMMENT "Текст композиции",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Медиафайлы";

-- SHOW CREATE TABLE media;

-- Таблица плейлистов
-- DROP TABLE IF EXISTS playlists;
CREATE TABLE playlists (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(100) NOT NULL COMMENT "Наименование плейлиста",
  artist_id INT UNSIGNED NOT NULL COMMENT "Ссылка на автора",
  description TEXT COMMENT "Описание плейлиста",
  playlist_type enum('playlist','album') NOT NULL DEFAULT 'playlist' COMMENT "Тип плейлиста",
  metadata JSON DEFAULT NULL COMMENT "Метаданные файла",
  image_path VARCHAR(255) NOT NULL COMMENT "Путь к файлу обложки",
  security_type enum('private','public','link') NOT NULL COMMENT "Тип доступа к плейлисту",
  net_adress VARCHAR(255) NOT NULL COMMENT "Ссылка на страницу альбома",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Плейлисты"; 

-- SHOW CREATE TABLE playlists;

-- Таблица содержимого плейлистов
-- DROP TABLE IF EXISTS playlists_objects;
CREATE TABLE playlists_objects (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT "Идентификатор строки",
  playlist_id INT UNSIGNED NOT NULL COMMENT "Ссылка на плейлист",
  media_id INT UNSIGNED NOT NULL COMMENT "Ссылка на идентификатор медиа",
  num_on_play INT UNSIGNED NOT NULL DEFAULT '0',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
  PRIMARY KEY (id) COMMENT "Первичный ключ"
) COMMENT "Состав плейлистов";

-- SHOW CREATE TABLE playlists_objects;

-- Таблица лайков
-- DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  target_id INT UNSIGNED NOT NULL COMMENT "Ссылка на идентификатор объекта лайка",
  target_type ENUM('media','playlist','artist') NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- SHOW CREATE TABLE likes;

-- Таблица прослушиваний
-- DROP TABLE IF EXISTS users_plays;
CREATE TABLE users_plays (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  target_id INT UNSIGNED NOT NULL COMMENT "Ссылка на идентификатор прослушанного медиа",
  play_time TIME NOT NULL COMMENT "Продолжительность прослушивания",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  PRIMARY KEY (user_id, created_at)
);

-- SHOW CREATE TABLE users_plays;
