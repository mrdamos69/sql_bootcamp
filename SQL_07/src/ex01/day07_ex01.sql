select p.name, count(pv.person_id) as count_of_visits from person_visits as pv
join person as p on pv.person_id = p.id
group by p.name
order by count_of_visits DESC, p.name LIMIT 4