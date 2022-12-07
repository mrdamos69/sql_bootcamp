with top_visits as (select p.name, count(pv.person_id)
					from person_visits as pv
					join person as p on pv.person_id = p.id
					group by p.name)
select * from top_visits as tv
where tv.count > 3