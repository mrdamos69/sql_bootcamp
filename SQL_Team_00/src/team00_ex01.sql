with recursive maps as (
	select point1 as tour, point1, point2, cost, cost as all_sum
	from structure
	where point1 = 'a'
	union all
	(select pattern.tour || ', ' || child.point1 as tour,
	child.point1, child.point2, child.cost,
	pattern.all_sum + child.cost as all_sum
	from structure as child
	inner join maps as pattern on child.point1 = pattern.point2
	where tour not like '%' || child.point1 || '%')
), refresh_maps as(select all_sum as total_cost, concat('{', tour, ', a', '}') as tour
		from maps
		where length(tour) = 10 and point2 = 'a'
		order by total_cost)
		
select * from refresh_maps
order by 2
