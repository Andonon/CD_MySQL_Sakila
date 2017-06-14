#7. What query would you run to get all drama films with a rental rate of 2.99? 
#Your query should return film title, description, release year, rating, special features, and genre (category).

select f.film_id, f.rental_rate, f.title, f.description, f.release_year, f.rating, f.special_features, c.name
from film f 
join film_category fc on f.film_id = fc.film_id
join category c on fc.category_id = c.category_id
where c.category_id = 7 and f.rental_rate = '2.99' 