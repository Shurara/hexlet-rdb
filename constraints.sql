/*
Напишите запрос, создающий таблицу users со следующими полями:

    id — первичный автогенерируемый ключ.
    username — уникально и не может быть null.
    email — не может быть null.
    created_at — не может быть null.

Напишите запрос, создающий таблицу topics со следующими полями:

    id — первичный автогенерируемый ключ.
    user_id — внешний ключ.
    body — не может быть null.
    created_at — не может быть null.

Подсказки

    Выберите типы данных самостоятельно.

*/
CREATE TABLE users(
    id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    username varchar(255) UNIQUE NOT NULL,
    email varchar(255) NOT NULL,
    created_at timestamp NOT NULL
);
CREATE TABLE topics(
    id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    user_id integer REFERENCES users(id),
    body text NOT NULL,
    created_at timestamp NOT NULL
);
