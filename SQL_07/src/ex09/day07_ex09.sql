with number as (select address, cast(age as numeric(7,2))
			 from person),
     form as (select address, round((max(age) - (min(age)/max(age))), 2) as formula, round(avg(age), 2) as average
			from number group by address)
select address, formula, average, formula > average as comprarison
from form
order by address;