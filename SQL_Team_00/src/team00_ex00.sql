create table structure
(
    id     bigint primary key,
    point1 varchar not null,
    point2 varchar not null,
    cost   integer not null
);

insert into structure
values (1, 'a', 'b', 10);
insert into structure
values (2, 'b', 'a', 10);
insert into structure
values (3, 'a', 'c', 15);
insert into structure
values (4, 'c', 'a', 15);
insert into structure
values (5, 'a', 'd', 20);
insert into structure
values (6, 'd', 'a', 20);
insert into structure
values (7, 'b', 'c', 35);
insert into structure
values (8, 'c', 'b', 35);
insert into structure
values (9, 'b', 'd', 25);
insert into structure
values (10, 'd', 'b', 25);
insert into structure
values (11, 'c', 'd', 30);
insert into structure
values (12, 'd', 'c', 30);

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
		
select total_cost, tour from refresh_maps
where total_cost = (select min(total_cost) from refresh_maps)
order by 2
