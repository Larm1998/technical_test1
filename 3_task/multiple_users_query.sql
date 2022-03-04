select count(1) number_of_users, b.name from users a, clients b
	  where a.client_id = b.id
	  group by b.id
	  order by b.id

	  	  select b.name Location, a.name Category, count(1)
	  from categories a, locations b, items c
	  where c.location_id = b.id
	  and c.category_id = a.id
	  group by b.id, a.id
	  order by b.name