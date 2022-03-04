Create Table users 
(
	id int Generated always as identity,
	name varchar(50) not null,
	password varchar (50) not null,
	username varchar(50) not null,
	client_id int not null,
	primary key(id),
	foreign key (client_id) references clients (id)
)