create or replace function
    fnc_person_visits_and_eats_on_date(in pperson varchar default 'Dmitriy', pprice numeric default 500,
    in pdate date default '2022-01-08')
returns varchar as $$ declare pizzeria_name varchar;
begin
    select pz.name into pizzeria_name from person
    join person_visits as pv on person.id = pv.person_id
    join person_order as po on pv.visit_date = po.order_date
    join menu as m on m.id = po.menu_id
    join pizzeria as pz on pv.pizzeria_id = pz.id
    where person.name = pperson and m.price < pprice and pv.visit_date = pdate;
    return pizzeria_name;
end;
$$ language plpgsql;

select *
from fnc_person_visits_and_eats_on_date(pprice := 800);
select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');