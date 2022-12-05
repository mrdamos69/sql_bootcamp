SELECT gs.date AS missing_date FROM generate_series('2022-01-01'::timestamp, '2022-01-10', '1 day') AS gs
LEFT JOIN (SELECT visit_date FROM person_visits
		   WHERE person_id = 1 OR person_id = 2
		  ) AS pv
ON gs.date = pv.visit_date
WHERE pv.visit_date IS NULL