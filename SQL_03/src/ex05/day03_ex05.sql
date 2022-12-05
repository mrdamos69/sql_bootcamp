with vizit_andrey as(select pz.name from person as p
left join person_visits as pv on p.id = pv.person_id
left join pizzeria as pz on pz.id = pv.pizzeria_id
where p.name = 'Andrey'),

order_andrey as (select pz.name from person as p
left join person_order as po on p.id = po.person_id
left join menu as m on m.id = po.menu_id
left join pizzeria as pz on pz.id = m.pizzeria_id
where p.name = 'Andrey'),

selection_pv as(select * from vizit_andrey except
         		select * from order_andrey),
selection_po as(select * from order_andrey except
         		select * from vizit_andrey)
select name as pizzeria_name from selection_pv
union
select name as pizzeria_name from selection_po
order by pizzeria_name