set enable_bitmapscan  = off;
set enable_seqscan = off;
explain analyse select m.pizza_name, pz.name from menu as m
join pizzeria as pz on m.pizzeria_id = pz.id