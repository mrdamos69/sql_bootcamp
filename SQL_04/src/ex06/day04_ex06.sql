create MATERIALIZED view mv_dmitriy_visits_and_eats as(
    select pz.name as pizzeria_name from person as p
	join person_visits as pv on p.id = pv.person_id
	join pizzeria as pz on pz.id = pv.pizzeria_id
	join menu as m on m.pizzeria_id = pv.pizzeria_id
	where p.name = 'Dmitriy' and pv.visit_date = '2022-01-08' and m.price < 800
)