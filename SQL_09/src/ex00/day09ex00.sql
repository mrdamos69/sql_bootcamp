create table person_audit
( created timestamp with time zone default NOW() NOT NULL,
  type_event char(1) default 'I' NOT NULL,
  row_id bigint NOT NULL ,
  name varchar not null,
  age integer not null default 10,
  gender varchar default 'female' not null ,
  address varchar
constraint ch_type_event check (type_event = 'I' or type_event = 'U' or type_event = 'D')
);