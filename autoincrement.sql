/*
Создайте таблицу article_categories с двумя полями:

    id - автогенерируемый первичный ключ
    name - текстовое поле

Добавьте в эту таблицу две произвольные записи
Подсказки

    Перед тем как писать запросы в файл, зайдите в psql и поэкспериментируйте как следует

*/
CREATE TABLE article_categories(
    id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(255)
);
INSERT INTO article_categories (name)
VALUES ('books'), ('magazins');
