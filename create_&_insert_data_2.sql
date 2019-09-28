/*

    Создайте таблицу users со следующими полями:
        id - первичный ключ
        first_name - имя
        created_at - дата создания пользователя
    Добавьте в таблицу users одну произвольную запись.
    Создайте таблицу orders со следующими полями:
        id - первичный ключ
        user_first_name - при вставке записи здесь указывается имя пользователя из таблицы users
        months - количество покупаемых месяцев (обучение на Хекслете)
        created_at - дата создания заказа
    Добавьте в таблицу orders два заказа на созданного ранее пользователя

Значения первичных ключей задайте самостоятельно. Автогенерация изучается дальше по курсу. Примеры вставки данных в эти таблицы:

INSERT INTO users (id, first_name, created_at) VALUES (1, 'Tom', '1832-11-23');
INSERT INTO orders (id, user_first_name, months, created_at) VALUES (1, 'Tom', 3, '2012-10-1');

Подсказки

    Перед тем как писать запросы в файл, зайдите в psql и поэкспериментируйте как следует

*/

CREATE TABLE users (
id integer PRIMARY KEY,
first_name VARCHAR(255),
created_at TIMESTAMP
);
INSERT INTO users VALUES (1, 'Sasha', '2019*09-28');
CREATE TABLE orders (
id integer PRIMARY KEY,
user_first_name VARCHAR(255),
months integer,
created_at TIMESTAMP
);
INSERT INTO orders (id, user_first_name, months, created_at) 
VALUES (1, 'Sasha', 3, '2019-10-1'), (2, 'Sasha', 3, '2019-10-2');
