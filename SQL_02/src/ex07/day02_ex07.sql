SELECT pz.name AS pizzeria_name FROM person AS p
JOIN person_visits AS pv ON p.id = pv.person_id
JOIN pizzeria AS pz ON pz.id = pv.pizzeria_id
JOIN menu AS m ON m.pizzeria_id = pv.pizzeria_id
WHERE p.name = 'Dmitriy' AND pv.visit_date = '2022-01-08' AND m.price < 800
ORDER BY pz.name