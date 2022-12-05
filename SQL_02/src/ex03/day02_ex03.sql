WITH value_date AS (
    SELECT CAST(pv AS date) AS missing_date
    FROM generate_series('2022-01-01'::timestamp, '2022-01-10', '1 day') pv
), dates AS (SELECT visit_date FROM person_visits
    		WHERE person_id = 1 OR person_id = 2)
SELECT missing_date FROM value_date LEFT JOIN dates ON visit_date = missing_date
WHERE visit_date IS NULL
ORDER BY visit_date;