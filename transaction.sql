/*
Механизм дружбы в социальных сетях, обычно, реализуется через отдельную таблицу friendship ссылающуюся на обоих пользователей. Когда два человека начинают дружить, то в эту таблицу заносятся сразу две записи:

friendship

id	user1_id	user2_id
1	3	10
2	10	3
Такой способ организации данных позволяет работать с понятием "дружба" независимо от того, кто был указан первым, а кто вторым.

nobody=# select * from users;
 id | first_name |         email         |      birthday       
----+------------+-----------------------+---------------------
  1 | Sansa      | sansa@winter.com      | 1999-10-23 00:00:00
  2 | Jon        | jon@winter.com        | 1999-10-07 00:00:00
  3 | Daenerys   | daenerys@drakaris.com | 1999-10-23 00:00:00
  4 | Arya       | arya@winter.com       | 2003-03-29 00:00:00
  5 | Robb       | robb@winter.com       | 1999-11-23 00:00:00
  6 | Brienne    | brienne@tarth.com     | 2001-04-04 00:00:00
  7 | Tirion     | tirion@got.com        | 1975-01-11 00:00:00
(7 rows)

solution.sql
Составьте транзакцию, которая создает дружбу между пользователями Tirion и Jon.
*/

BEGIN;
INSERT INTO friendship (user1_id, user2_id) VALUES (7, 2);
INSERT INTO friendship (user1_id, user2_id) VALUES (2, 7);
COMMIT;
