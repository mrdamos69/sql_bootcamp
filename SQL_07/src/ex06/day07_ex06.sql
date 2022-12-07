select pz.name, count(po.menu_id) as count_of_orders,
				round(avg(m.price), 0) as average_price,
				max(price) as max_price,
				min (price) as min_price
from menu as m
join person_order as po on m.id = po.menu_id
join pizzeria as pz on m.pizzeria_id = pz.id
group by pz.name
order by pz.name