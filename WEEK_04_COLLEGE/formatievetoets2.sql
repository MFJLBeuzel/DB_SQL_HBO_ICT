#1
SELECT first_name, last_name, address, phone
FROM sakila.staff S JOIN sakila.address A
ON S.address_id = A.address_id;
#2
INSERT INTO sakila.actor (actor_id, date_of_birth, first_name, last_name)
VALUES (1337, '1981-05-27', 'CHRIS', 'MESSIE');
#3
SELECT C.customer_id,first_name, last_name, payment_date, amount
FROM sakila.customer C
JOIN sakila.payment P ON C.customer_id = P.customer_id
WHERE amount > 5
ORDER BY last_name;
#4
SELECT customer_id, rental_date
FROM sakila.rental
WHERE return_date IS NULL
ORDER BY customer_id;
#5
INSERT INTO sakila.category (category_id, name)
VALUES (17, ˈHistoryˈ), (18, ˈDanceˈ),
(19, ˈThrillerˈ), (20, ˈCrimeˈ);
#6
SELECT first_name, last_name
FROM sakila.actor A LEFT JOIN sakila.film_actor F
ON A.actor_id = F.actor_;
#7
SELECT last_name, address, city
FROM sakila.customer C JOIN sakila.address A
ON C.address_id = A.address_id
JOIN sakila.city Ci ON A.city_id = Ci.city_id
ORDER BY city;
#8
SELECT name
FROM sakila.language L LEFT JOIN sakila.film F
ON L.language_id=F.language_id
WHERE film_id IS NULL
ORDER BY name DESC;
#9
SELECT C.category_id, name, film_id
FROM sakila.category C LEFT JOIN sakila.film_category F
ON C.category_id = F.category_id;
#10
SELECT F.film_id, title, rating,
C.category_id, name
FROM sakila.film F JOIN sakila.film_category FC
ON F.film_id = FC.film_id
JOIN sakila.category C
ON FC.category_id = C.category_id
WHERE title LIKE '%DARK%';
