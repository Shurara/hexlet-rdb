/*
Напишите запрос который изменит таблицу products так как описано ниже:

Поле name должно стать not null, unique и иметь тип character varying;
Добавьте поле amount типа integer;
Удалите default у поля price;
DROP TABLE IF EXISTS "products";

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name text,
    price numeric DEFAULT 1
);
*/
ALTER TABLE products
    ADD COLUMN amount integer,
    ALTER COLUMN name TYPE varchar,
    ALTER COLUMN name SET NOT NULL,
    ADD CONSTRAINT name_uniq UNIQUE (name),
    ALTER COLUMN price DROP DEFAULT;
