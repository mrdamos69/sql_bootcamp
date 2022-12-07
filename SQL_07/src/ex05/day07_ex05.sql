with neme_order as (select distinct p.name
					from person_order as po
					inner join person as p on p.id = po.person_id)
select * from neme_order
order by 1