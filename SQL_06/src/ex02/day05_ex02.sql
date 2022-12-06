create index idx_person_name on person (upper(name));
explain analyze select name from person
where upper(name) is not null