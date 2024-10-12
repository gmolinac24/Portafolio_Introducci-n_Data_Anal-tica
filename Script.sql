select * 
from actor 

select count(*)
from actor a

select count(*) 
from rental r 

## City_Geo
select *
from country cr 
inner join city c on c.country_id = cr.country_id 

##DisponibilidadEnInventarioDeFilms
SELECT 
    i.inventory_id,
    i.film_id,
    f.title AS film_title,
    f.release_year,
    f.language_id,
    i.store_id,
    i.last_update
FROM 
    inventory i
JOIN 
    film f ON i.film_id = f.film_id
    
## Actor_Mas_visto
SELECT 
    fa.actor_id,
    f.title AS film_title,
    r.rental_id,
    r.rental_date,
    r.return_date,
    r.inventory_id
FROM 
    film_actor fa
JOIN 
    film f ON fa.film_id = f.film_id
JOIN 
    inventory i ON f.film_id = i.film_id
JOIN 
    rental r ON i.inventory_id = r.inventory_id
    
    
    
   ##Lenguaje_Films
    SELECT
    f.film_id,
    f.title AS film_title,
    f.release_year,
    l.name AS language_name,
    f.language_id,
    f.last_update
FROM 
    film f
JOIN 
    language l ON f.language_id = l.language_id
    
##Ganancias_Films
 SELECT 
    f.film_id,
    f.title AS film_title,
    p.payment_id,
    p.amount,
    p.payment_date,
    p.customer_id
FROM 
    film f
JOIN 
    inventory i ON f.film_id = i.film_id
JOIN 
    rental r ON i.inventory_id = r.inventory_id
JOIN 
    payment p ON r.rental_id = p.rental_id
    
    
 ##Rentas_Vendedor
 
    SELECT 
    p.payment_id,
    p.amount,
    p.payment_date,
    p.customer_id,
    s.staff_id,
    s.first_name,
    s.last_name,
    s.email
FROM 
    payment p
JOIN 
    staff s ON p.staff_id = s.staff_id
    
    
    SELECT 
    s.staff_id,
    s.first_name,
    s.last_name,
    s.email,
    a.address_id,
    a.address,
    a.address2,
    a.district,
    c.city_id,
    c.city
FROM 
    staff s
JOIN 
    address a ON s.address_id = a.address_id
JOIN 
    city c ON a.city_id = c.city_id
