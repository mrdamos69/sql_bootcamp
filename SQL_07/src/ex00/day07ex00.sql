select pv.person_id, count(pv.person_id) as count_of_visits from person_visits as pv
group by pv.person_id
order by count_of_visits DESC, pv.person_id