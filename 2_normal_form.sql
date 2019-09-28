/*


В базе данных содержится таблица old_cars, в которой составной первичный ключ: model-brand.
model 	brand 	price 	discount
m5 	    bmw 	  5500000 	5
almera 	nissan 	5500000 	10
x5m 	  bmw 	  6000000 	5
m1 	    bmw 	  2500000 	5
gt-r 	  nissan 	5000000 	10

Цена (price) в этой таблице зависит от первичного ключа (model-brand), а вот скидка (discount) только от бренда (brand).
solution.sql

    Создайте две таблицы cars и brands, в которых отобразите нормализованную структуру таблицы old_cars. Создайте суррогатный первичный ключ для каждой из таблиц. Не забудьте указать внешний ключ в таблице cars на таблицу brands. Поле, с именем brand в таблице old_cars, должно иметь название name в таблице brands.
    Добавьте в эти таблицы те же записи, что и в исходной таблице, но в нормализованной форме.

Подсказки

    Перед тем, как писать запросы в файл, зайдите в psql и поэкспериментируйте как следует


*/
CREATE TABLE brands (
  id integer PRIMARY KEY,
  name varchar(255),
  discount integer
);

CREATE TABLE cars (
  id integer PRIMARY KEY,
  brand_id integer REFERENCES brands(id),
  model varchar(255),
  price integer
);

INSERT INTO brands VALUES 
    (1, 'bmw', 5), 
    (2, 'nissan', 10);
    
INSERT INTO cars VALUES
  (1, 1, 'm5', 5500000),
  (2, 1, 'x5m', 6000000),
  (3, 1, 'm1', 2500000),
  (4, 2, 'gt-r', 5000000),
  (5, 2, 'almera', 5500000);
