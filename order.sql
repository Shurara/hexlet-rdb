/*
Составьте запрос, который извлекает из базы данных (таблица users) 
все имена (поле first_name) пользователей, отсортированных по дате рождения (поле birthday) в обратном порядке. 
Те записи, у которых нет даты рождения, должны быть в конце списка.
*/

SELECT first_name FROM users ORDER BY birthday DESC NULLS LAST;
