/*


В базе данных содержится таблица old_cities, следующей структуры
country 	region 	city
Россия 	Татарстан 	Бугульма
Россия 	Татарстан 	Казань
Россия 	Самарская область 	Тольятти

Город в этой таблице зависит и от региона и от страны. Зависимость от региона прямая, а вот от страны город зависит косвенно, так как страна определяется регионом.
solution.sql

    Создайте три таблицы countries, country_regions и country_region_cities, в которых отобразите нормализованную структуру исходной таблицы old_cities. Создайте суррогатный первичный ключ для каждой из таблиц. Не забудьте указать внешний ключ. Поле для имени сущности в каждой таблице назовите именем name. Все ключи должны иметь тип bigint.
    Добавьте в созданные таблицы те же записи, что и в исходной таблице, но в нормализованной форме.

Подсказки

    Внешний ключ именуется как: имя таблицы в единственном числе плюс _id.
    Перед тем как писать запросы в файл, зайдите в psql и поэкспериментируйте как следует.


*/
CREATE TABLE countries(
    id bigint PRIMARY KEY,
    name varchar(255)
);
CREATE TABLE country_regions(
    id bigint PRIMARY KEY,
    name varchar(255),
    country_id bigint REFERENCES countries(id)
);
CREATE TABLE country_region_cities(
    id bigint PRIMARY KEY,
    name varchar(255),
    country_region_id bigint REFERENCES country_regions(id)
);
INSERT INTO countries VALUES 
    (1, 'Россия');
INSERT INTO country_regions VALUES 
    (1, 'Татарстан', 1),
    (2, 'Самарская область', 1);
INSERT INTO country_region_cities VALUES 
    (1, 'Бугульма', 1),
    (2, 'Казань', 1),
    (3, 'Тольятти', 2);
