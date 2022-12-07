with top_order as (select pz.name, count(m.pizzeria_id), concat('order') as action_type from person_order as po
					join menu as m on po.menu_id = m.id
					join pizzeria as pz on m.pizzeria_id = pz.id
					group by pz.name
					order by action_type, count DESC LIMIT 3),
	top_visit as (select pz.name, count(pv.pizzeria_id), concat('visit') as action_type from person_visits as pv
					join pizzeria as pz on pz.id = pv.pizzeria_id
					group by pz.name
					order by action_type, count DESC LIMIT 3)
select * from top_order
union
select * from top_visit
order by action_type, count DESC