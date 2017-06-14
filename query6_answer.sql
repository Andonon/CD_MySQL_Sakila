#6. What query would you run to get all the actors that joined in the film_id = 369? 
#Your query should return the film_id, title, actor_id, and actor_name.

select f.film_id, f.title, fa.actor_id, concat(a.first_name, " ", a.last_name) as 'Actor Name'
from film f 
join film_actor fa on f.film_id = fa.film_id
join actor a on fa.actor_id = a.actor_id
where f.film_id = 369;
