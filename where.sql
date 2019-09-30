/*
Составьте запрос, который извлекает все записи из таблицы users по следующим правилам:

Пользователи созданы позже 2018-11-23 (включая эту дату) и раньше 2018-12-12 (включая эту дату) или поле house имеет значение stark
Данные отсортированы по дате создания по убыванию
*/

/*SELECT * FROM users 
WHERE (created_at <='2018-12-12' AND created_at >='2018-11-23') OR house = 'stark' 
ORDER BY created_at DESC;
*/
SELECT * FROM users
  WHERE created_at BETWEEN '2018-11-23' AND '2018-12-12' OR house = 'stark'
  ORDER BY created_at DESC;
