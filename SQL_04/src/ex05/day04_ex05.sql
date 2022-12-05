create view v_price_with_discount as
	(select p.name, m.pizza_name, m.price, round(m.price - m.price * 0.1) 
	from person as p left join person_order as po on p.id = person_id
	left join menu as m on m.id = po.menu_id)
order by p.name, m.pizza_name