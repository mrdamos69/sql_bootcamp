SELECT p.id AS person_id, p.name AS person_name, p.age , p.gender, p.address, pz.id AS pizzeria_id, pz.name AS pizzeria_name, pz.rating 
FROM person AS p JOIN pizzeria AS pz ON p.id = pz.id
UNION
SELECT p.id AS person_id, p.name AS person_name, p.age , p.gender, p.address, pz.id AS pizzeria_id, pz.name AS pizzeria_name, pz.rating
FROM person AS p JOIN pizzeria AS pz ON p.id != pz.id
ORDER BY person_id;