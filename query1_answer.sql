select cu.first_name, cu.last_name, cu.email, ad.address, ad.address2, ci.city, cc.country, ad.postal_code 
from customer cu
join address ad on cu.address_id = ad.address_id
join city ci on ad.city_id = ci.city_id
join country cc on ci.country_id = cc.country_id
where ci.city_id = 312;
