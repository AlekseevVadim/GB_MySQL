-- ДЗ к 8-ому уроку
-- Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT COUNT(l.id) as Sum_likes, 
p.gender AS gender_likes_leader
FROM likes AS l
JOIN profiles AS p
ON p.user_id = l.user_id
GROUP BY p.gender
ORDER BY Sum_likes DESC
LIMIT 1;

-- Вывести для каждого пользователя количество созданных сообщений, постов,
-- загруженных медиафайлов и поставленных лайков.
SELECT 
u.id, 
u.first_name,
u.last_name,
COUNT(DISTINCT m.id) AS Sum_messages,
COUNT(DISTINCT p.id) AS Sum_posts,
COUNT(DISTINCT med.id) AS Sum_media,
COUNT(DISTINCT l.id) AS Sum_likes
FROM users AS u
LEFT JOIN messages AS m 
ON m.from_user_id = u.id
LEFT JOIN posts AS p 
ON p.user_id = u.id
LEFT JOIN media AS med 
ON med.user_id = u.id
LEFT JOIN likes AS l 
ON l.user_id = u.id
GROUP BY u.id
ORDER BY u.id;

-- (по желанию) Подсчитать количество лайков которые получили 10 самых последних сообщений.
-- Для просмотра количества по каждому
SELECT
m.id AS message_id,
COUNT(l.id) AS Sum_likes
FROM messages AS m 
LEFT JOIN likes AS l 
ON (l.target_type = 'messages') AND (l.target_id = m.id)
GROUP BY m.id
ORDER BY m.created_at DESC
LIMIT 10;
-- Для подсчета общего числа лайков для указанных сообщений
SELECT SUM(likes_messages.sum_likes) AS sum_likes_10last_messages
FROM
(SELECT
COUNT(l.id) AS sum_likes
FROM messages AS m 
LEFT JOIN likes AS l 
ON (l.target_type = 'messages') AND (l.target_id = m.id)
GROUP BY m.id
ORDER BY m.created_at DESC
LIMIT 10) AS likes_messages;
