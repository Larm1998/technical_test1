select a.username users_name, a.id users_id, b.name users_client_name
	  from users a, clients b
	  where a.client_id = b.id