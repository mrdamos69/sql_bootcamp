SELECT order_date,
    FORMAT('%s (age:%s)', person.name, person.age) AS person_information
FROM person
NATURAL JOIN (SELECT order_date, person_id AS id FROM person_order) AS pc
ORDER BY order_date, person_information