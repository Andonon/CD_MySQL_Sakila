#8. What query would you run to get all the action films which are joined by SANDRA KILMER? 
#Your query should return film title, description, release year, 
#rating, special features, genre (category), and actor's first name and last name.

select f.title, f.description, f.release_year, f.rating, f.special_features, c.name, concat(a.first_name, " ", a.last_name) as 'Actor Name' from film f
join film_actor fa on f.film_id = fa.film_id
join actor a on fa.actor_id = a.actor_id
join  film_category fc on f.film_id = fc.film_id
join category c on fc.category_id = c.category_id
where a.first_name = 'SANDRA' and a.last_name = 'KILMER' and c.name = 'action'
