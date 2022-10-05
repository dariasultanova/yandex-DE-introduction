-- напишите тут запрос
-- SELECT CASE
-- WHEN  условие THEN значение
-- END — для определения возрастной группы
-- JOIN — для объединения таблиц
-- GROUP BY — для группировки
-- ORDER BY — для сортировки по нужному значению

SELECT
	CASE
  		WHEN age BETWEEN 18 AND 25 THEN '18-25'
  		WHEN age BETWEEN 26 AND 30 THEN '26-30'
  		WHEN age BETWEEN 31 AND 40 THEN '31-40'
		WHEN age BETWEEN 41 AND 55 THEN '41-55'
  		WHEN age > 55 THEN '55+'
	END AS age_group,
	SUM(payment_amount) AS sum
FROM
	"002_DM_clients"
JOIN
	user_payment_log upl
	ON upl.client_id = "002_DM_clients".client_id
GROUP BY
	age_group
ORDER BY
	sum DESC
