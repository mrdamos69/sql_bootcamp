insert into person_visits (id, person_id, pizzeria_id, visit_date)
values ((select max(id) from person_visits)+1, (select id from person where name = 'Dmitriy'),
	   	(select p.id from menu as m left join pizzeria as p on m.pizzeria_id = p.id
		left join mv_dmitriy_visits_and_eats as eat on true
		where eat.pizzeria_name != p.name and m.price < 800 limit 1), '2022-01-08');
refresh MATERIALIZED view mv_dmitriy_visits_and_eats;