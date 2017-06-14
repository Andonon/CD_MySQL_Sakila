select f.title, f.description, f.release_year, f.rating, f.special_features, c.name from film f
join film_category fc on f.film_id = fc.film_id
join category c on fc.category_id = c.category_id;
