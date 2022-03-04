Create Table clients 
(
	id int Generated always as identity,
	name varchar(50) not null,
	address varchar (50) not null,
	city varchar(50) not null,
	state varchar(50) null,
	zip_code int,
	primary key(id)
)