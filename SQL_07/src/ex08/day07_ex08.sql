select p.address, pz.name, count(m.pizzeria_id) as count_of_orders
from person as p
join person_order as po on p.id = po.person_id
join menu as m on po.menu_id = m.id
join pizzeria as pz on m.pizzeria_id = pz.id
group by p.address, pz.name, m.pizzeria_id
order by p.address, pz.name;