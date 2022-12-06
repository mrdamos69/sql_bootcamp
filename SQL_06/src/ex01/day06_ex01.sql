insert into person_discounts
select row_number() over(), po.person_id, m.pizzeria_id,
(case when count(m.pizzeria_id) = 1 then 10.5
      when count(m.pizzeria_id) = 2 then 22
      else 30 end)
from person_order as po
left join menu as m on m.id = po.menu_id
group by po.person_id, m.pizzeria_id;

select * from person_discounts