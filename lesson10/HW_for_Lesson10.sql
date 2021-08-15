-- ДЗ к уроку 10
USE vk_base;

-- 1. Проанализировать какие запросы могут выполняться наиболее
-- часто в процессе работы приложения и добавить необходимые индексы.

SHOW INDEX FROM users;
-- users - last_name
CREATE INDEX users_last_name_idx ON users(last_name);
-- users - first_name + last_name
CREATE INDEX users_first_name_last_name_idx ON users(first_name, last_name);

SHOW INDEX FROM profiles;
-- profiles - birhtday
CREATE INDEX profiles_birthday_idx ON profiles(birthday);

SHOW INDEX FROM media;
-- media - filename
CREATE INDEX media_filename_idx ON media(filename);

SHOW INDEX FROM posts;
-- posts - head
CREATE INDEX posts_head_idx ON posts(head);

SHOW INDEX FROM communities;
-- communities name
CREATE INDEX communities_name_idx ON communities(name);

-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- (сумма количестива пользователей во всех группах делённая на количество групп)
-- самый молодой пользователь в группе (желательно вывести имя и фамилию)
-- самый старший пользователь в группе (желательно вывести имя и фамилию)
-- количество пользователей в группе
-- всего пользователей в системе (количество пользователей в таблице users)
-- отношение в процентах для последних двух значений 
-- (общее количество пользователей в группе / всего пользователей в системе) * 100
SELECT * FROM communities;
SELECT * FROM communities_users;
SELECT * FROM users;
       
SELECT
DISTINCT c.name AS 'group name',
COUNT(cu.user_id) OVER() / (SELECT COUNT(id) FROM communities) AS 'average of users in group',
MIN(birthday) OVER w_c_id AS 'birthday of oldest user in group',
FIRST_VALUE(CONCAT(u.first_name, ' ', u.last_name)) OVER (w_c_id ORDER BY p.birthday) AS 'oldest user in group',
MAX(birthday) OVER w_c_id AS 'birthday of youngest user in group',
FIRST_VALUE(CONCAT(u.first_name, ' ', u.last_name)) OVER (w_c_id ORDER BY p.birthday DESC) AS 'youngest user in group',
COUNT(cu.user_id) OVER w_c_id AS count_of_users_in_group,
(SELECT COUNT(id) FROM users) AS count_of_users_in_vk,
COUNT(cu.user_id) OVER w_c_id / (SELECT COUNT(id) FROM users) * 100 AS '%%'
FROM (communities c
      LEFT JOIN communities_users cu
        ON cu.community_id = c.id 
      LEFT JOIN users u
        ON cu.user_id = u.id
      LEFT JOIN profiles p
        ON u.id = p.user_id)
WINDOW w_c_id AS (PARTITION BY c.id);

