create table hospitals(
	id SERIAL primary key,
	name VARCHAR not null,
	address VARCHAR not null,
	city VARCHAR not null,
	state VARCHAR not null,
	zip NUMERIC not null,
	beds NUMERIC not null,
	rating NUMERIC);

create table schools(
	id serial primary key,
	County varchar not null,
	District varchar not null,
	School varchar,
	Street varchar,
	Zip varchar,
	state varchar,
	website varchar,
	phone varchar,
	latitude numeric,
	longitude numeric
);
select * from hospitals;

select * from Schools;