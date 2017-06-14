#What query would you run to get all the customers in store_id = 1 and inside these cities (1, 42, 312 and 459)? 

#Your query should return customer first name, last name, email, and address.

use sakila; 

select cu.first_name, cu.last_name, cu.email, ad.address, ad.address2, ci.city, cc.country, ad.postal_code 
from customer cu
join address ad on cu.address_id = ad.address_id
join city ci on ad.city_id = ci.city_id
join country cc on ci.country_id = cc.country_id
where ci.city_id in (1,42,312,459) and cu.store_id = 1