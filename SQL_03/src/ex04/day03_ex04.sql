with pz_famele as (select pz.name from person as p
left join person_order as po on p.id = po.person_id
left join menu as m on m.id = po.menu_id		
left join pizzeria as pz on pz.id = m.pizzeria_id 
where p.gender = 'female'),
pz_male as (select pz.name from person as p
left join person_order as po on p.id = po.person_id
left join menu as m on m.id = po.menu_id		
left join pizzeria as pz on pz.id = m.pizzeria_id
where p.gender = 'male'),
all_pizzeria_1 as (select * from pz_famele except select * from pz_male),
all_pizzeria_2 as (select * from pz_male except select * from pz_famele)
select * from all_pizzeria_1 union select * from all_pizzeria_2
order by 1;