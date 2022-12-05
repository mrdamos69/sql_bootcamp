with selection_pizza as (select m.pizza_name, pz.name, m.price, pz.id, m.pizzeria_id from menu as m
					 left join pizzeria as pz on m.pizzeria_id = pz.id)
					 
select spz_1.pizza_name, spz_1.name, spz_2.name, spz_1.price from selection_pizza as spz_1
left join selection_pizza as spz_2 on
spz_1.pizza_name = spz_2.pizza_name and
spz_1.price = spz_2.price

where spz_1.pizza_name = spz_2.pizza_name and
spz_1.price = spz_2.price and
spz_1.id > spz_2.id

order by 1;