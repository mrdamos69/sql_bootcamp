select m.id as menu_id from menu as m 
left join person_order as po on m.id = po.menu_id
where po.person_id is null
order by menu_id