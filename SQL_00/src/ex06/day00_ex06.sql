SELECT
	(SELECT name FROM person WHERE id = person_order.person_id) AS NAME,
	(SELECT name = 'Denis' FROM person WHERE id = person_order.person_id) AS check_name
FROM person_order
WHERE (order_date = '2022-01-07' AND (menu_id = 18 OR menu_id = 14 OR menu_id = 13))