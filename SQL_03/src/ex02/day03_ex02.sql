select m.pizza_name, m.price, pz.name as pizzeria_name from menu as m 
left join person_order as po on m.id = po.menu_id
left join pizzeria as pz on m.pizzeria_id = pz.id
where po.person_id is null
order by m.pizza_name, m.price