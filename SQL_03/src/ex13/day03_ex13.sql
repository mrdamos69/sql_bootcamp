delete from person_order
where menu_id = (select id from menu where pizza_name = 'greek pizza') and
order_date = '2022-02-25';
delete from menu
where pizza_name = 'greek pizza'