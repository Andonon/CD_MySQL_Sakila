#What query would you run to get all the films joined by actor_id=5? 
#Your query should return the actor id, actor name, film title, description, and release year.

select fa.actor_id, concat(a.first_name, " ", a.last_name) as 'Actor Name', f.title, f.description, f.release_year from film_actor fa 
join actor a on fa.actor_id = a.actor_id
join film f on fa.film_id = f.film_id
where fa.actor_id = 5