select m.pizza_name, m.price, pz.name as pizzeria_name, pv.visit_date from person as p
join person_visits as pv on p.id = pv.person_id
join pizzeria as pz on pz.id = pv.pizzeria_id
join menu as m on m.pizzeria_id = pz.id
where p.name = 'Kate' and m.price between 800 and 1000
order by m.pizza_name, m.price, pz.name