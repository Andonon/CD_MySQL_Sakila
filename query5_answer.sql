#5. What query would you run to get all the films with a "rating = G" 
#and "special feature = behind the scenes", joined by actor_id = 15? 
#Your query should return the film title, description, release year, rating, and special feature. 
#Hint: You may use LIKE function in getting the 'behind the scenes' part.

select f.title, f.description, f.release_year, f.rating, f.special_features
from film f 
join film_actor fa on f.film_id =  fa.film_id
where fa.actor_id = 15 and f.rating = "G" and f.special_features like '%behind the scenes%' 