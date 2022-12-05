insert into person_order (id, person_id, menu_id, order_date)
select value as id, p.id as person_id,
	(select id from menu as m where m.pizza_name = 'greek pizza') as menu_id, '2022-02-25' as order_date
	from generate_series((select max(id) + 1 from person_order),
	(select max(id) from person) + (select max(id) from person_order)) as value
	join person as p on p.id + (SELECT max(id) FROM person_order) = value