
-- Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT COUNT(*) AS Sum_likes, (SELECT gender FROM profiles WHERE profiles.user_id = likes.user_id) AS gender_likes_leader
FROM likes
GROUP BY gender_likes_leader
ORDER BY Sum_likes DESC
LIMIT 1;

-- Вывести для каждого пользователя количество созданных сообщений, постов, загруженных медиафайлов и поставленных лайков.
SELECT id,
(SELECT COUNT(id) FROM likes WHERE likes.user_id = users.id) AS sum_likes,
(SELECT COUNT(id) FROM messages WHERE messages.from_user_id = users.id) AS sum_from_messages,
(SELECT COUNT(id) FROM posts WHERE posts.user_id = users.id) AS sum_posts,
(SELECT COUNT(id) FROM media WHERE media.user_id = users.id) AS sum_media
FROM users
ORDER BY id;

-- (по желанию) Подсчитать количество лайков которые получили 10 самых последних сообщений.
-- Для просмотра количества по каждому
SELECT id, created_at,
(SELECT COUNT(id) FROM likes 
WHERE (likes.target_type = 'messages') AND (likes.target_id = messages.id)
) AS sum_likes
FROM messages ORDER BY created_at DESC LIMIT 10;
-- Для подсчета общего числа лайков для указанных сообщений
SELECT SUM(likes_messages) AS sum_likes_10last_messages FROM
(SELECT (SELECT COUNT(*) FROM likes 
WHERE (likes.target_type = 'messages') AND (likes.target_id = messages.id)
) AS likes_messages
FROM messages ORDER BY created_at DESC LIMIT 10) as count_likes_messages;
