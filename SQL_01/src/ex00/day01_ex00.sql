SELECT id, pizza_name FROM menu
UNION
SELECT id AS object_id, name AS object_name FROM person
ORDER BY id, pizza_name