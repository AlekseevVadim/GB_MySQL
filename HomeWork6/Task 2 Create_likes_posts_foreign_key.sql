USE vk_base;

-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type ENUM('messages', 'users', 'posts', 'media') NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Временная таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TEMPORARY TABLE target_types (
  name VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');
 
-- Заполняем лайки
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    (SELECT name FROM target_types ORDER BY RAND() LIMIT 1),
    CURRENT_TIMESTAMP 
  FROM messages;

-- Проверим
SELECT * FROM likes LIMIT 10;

-- Создадим таблицу постов
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

TRUNCATE posts;
SELECT * FROM posts LIMIT 10;
-- заполнили таблицу дампом с сайта filldb

-- Создаем внешние ключи
-- для таблицы profiles
DESC profiles;

ALTER TABLE profiles
ADD CONSTRAINT profiles_user_id_fk
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE CASCADE;
-- Для удаления созданного ограничения
-- ALTER TABLE profiles DROP CONSTRAINT profiles_user_id_fk;
ALTER TABLE profiles
ADD CONSTRAINT profiles_city_id_fk
FOREIGN KEY (city_id)
REFERENCES cities(id)
ON DELETE SET NULL;

-- для таблицы cities
DESC cities;

ALTER TABLE cities
ADD CONSTRAINT cities_countries_id_fk
FOREIGN KEY (country_id)
REFERENCES countries(id)
ON DELETE SET NULL;

-- для таблицы communities_users
DESC communities_users;

ALTER TABLE communities_users
ADD CONSTRAINT communities_users_users_id_fk
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE CASCADE;

ALTER TABLE communities_users
ADD CONSTRAINT communities_users_communities_id_fk
FOREIGN KEY (community_id)
REFERENCES communities(id)
ON DELETE CASCADE;

-- для таблицы messages
DESC messages;

ALTER TABLE messages
ADD CONSTRAINT messages_from_users_id_fk
FOREIGN KEY (from_user_id)
REFERENCES users(id)
ON DELETE CASCADE;

ALTER TABLE messages
ADD CONSTRAINT messages_to_users_id_fk
FOREIGN KEY (to_user_id)
REFERENCES users(id)
ON DELETE CASCADE;

-- для таблицы friendship
DESC friendship;

ALTER TABLE friendship
ADD CONSTRAINT friendship_users_id_fk
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE CASCADE;

ALTER TABLE friendship
ADD CONSTRAINT friendship_friend_id_fk
FOREIGN KEY (friend_id)
REFERENCES users(id)
ON DELETE CASCADE;

-- Добавим возможность иметь null значения столбцу
-- friendship_status_id, что бы при удалении статусов
-- не потерять данные о дружбе.
ALTER TABLE friendship 
MODIFY friendship_status_id INT UNSIGNED 
COMMENT "Ссылка на статус (текущее состояние) отношений";

ALTER TABLE friendship
ADD CONSTRAINT friendship_friendship_stat_id_fk
FOREIGN KEY (friendship_status_id)
REFERENCES friendship_statuses(id)
ON DELETE SET NULL;

-- для таблицы media
DESC media;

ALTER TABLE media
ADD CONSTRAINT media_users_id_fk
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE CASCADE;

ALTER TABLE media
ADD CONSTRAINT media_media_type_id_fk
FOREIGN KEY (media_type_id)
REFERENCES media_types(id)
ON DELETE CASCADE;

-- для таблицы likes
DESC likes;

ALTER TABLE likes
ADD CONSTRAINT likes_users_id_fk
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE CASCADE;

ALTER TABLE likes
ADD CONSTRAINT likes_target_messages_id_fk
FOREIGN KEY (target_id)
REFERENCES messages(id)
ON DELETE CASCADE;

ALTER TABLE likes
ADD CONSTRAINT likes_target_users_id_fk
FOREIGN KEY (target_id)
REFERENCES users(id)
ON DELETE CASCADE;

ALTER TABLE likes
ADD CONSTRAINT likes_target_posts_id_fk
FOREIGN KEY (target_id)
REFERENCES posts(id) 
ON DELETE CASCADE;

ALTER TABLE likes
ADD CONSTRAINT likes_target_media_id_fk
FOREIGN KEY (target_id)
REFERENCES media(id) 
ON DELETE CASCADE;

-- для таблицы posts
DESC posts;

ALTER TABLE posts
ADD CONSTRAINT posts_users_id_fk
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE CASCADE;

ALTER TABLE posts
ADD CONSTRAINT posts_communities_id_fk
FOREIGN KEY (community_id)
REFERENCES communities(id)
ON DELETE SET NULL;

ALTER TABLE posts
ADD CONSTRAINT posts_media_id_fk
FOREIGN KEY (media_id)
REFERENCES media(id)
ON DELETE SET NULL;

-- Напишем сложные запросы
-- Кто больше поставил лайков м или ж
SELECT COUNT(*), (SELECT gender FROM profiles WHERE profiles.user_id = likes.user_id) AS gender_likes
FROM likes
GROUP BY gender_likes;

-- Для каждого пользователя количество созданных сообщений,
-- постов, загруж. медиа, поставленных лайков

 