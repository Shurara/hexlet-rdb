/*
Запишите в файл следующие запросы:

    Запрос, который удаляет пользователя с именем Sansa
    Запрос, который вставляет в базу пользователя с именем Arya и почтой arya@winter.com
    Запрос, который устанавливает флаг manager в true для пользователя с емейлом tirion@got.com

Подсказки

    Перед тем как писать запросы в файл, зайдите в psql и поэкспериментируйте как следует
    Не бойтесь сломать что-то в базе, всегда можно восстановиться командой make reset в терминале

*/
DELETE FROM users 
WHERE first_name = 'Sansa';

INSERT INTO users (first_name, email) 
VALUES ('Arya', 'arya@winter.com');

UPDATE users 
SET manager = true 
WHERE email = 'tirion@got.com';
