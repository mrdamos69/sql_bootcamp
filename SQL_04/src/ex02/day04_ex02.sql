create view v_generated_dates as select 
date (format) generated_date
from generate_series('2022-01-01'::date, '2022-01-31', '1 day') as format
order by 1