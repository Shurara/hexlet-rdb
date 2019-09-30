/*
Table "public.users"
   Column   |            Type             | Collation | Nullable | Default 
------------+-----------------------------+-----------+----------+---------
 id         | bigint                      |           | not null | 
 birthday   | date                        |           |          | 
 email      | character varying(255)      |           | not null | 
 first_name | character varying(50)       |           |          | 
 created_at | timestamp without time zone |           |          | 
 
  Table "public.topics"
   Column   |            Type             | Collation | Nullable | Default 
------------+-----------------------------+-----------+----------+---------
 id         | bigint                      |           | not null | 
 user_id    | bigint                      |           | not null | 
 title      | character varying(255)      |           |          | 
 body       | text                        |           |          | 
 created_at | timestamp without time zone |           | not null | 
 
Составьте запрос, который извлекает из базы идентификатор топика и имя автора топика (first_name) по следующим правилам:

Анализируются топики только тех пользователей, чей емейл находится на домене lannister.com
Выборка отсортирована по дате создания топика в прямом порядке
*/

SELECT first_name, topics.id
FROM users 
JOIN topics ON topics.user_id = users.id
WHERE email LIKE '%@lannister.com'
ORDER BY topics.created_at;

/*SELECT topics.id, first_name
  FROM topics
  JOIN users ON topics.user_id = users.id
  WHERE email LIKE '%@lannister.com'
  ORDER BY topics.created_at;*/
