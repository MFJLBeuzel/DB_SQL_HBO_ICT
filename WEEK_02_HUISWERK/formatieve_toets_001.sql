#Vraag1
SELECT title, description
FROM sakila.film
WHERE release_year > 2013
ORDER BY title;
#Vraag2
SELECT last_name, email
FROM sakila.customer
WHERE active = 0;
#Vraag3
SELECT title, special_features
FROM sakila.film
WHERE title LIKE '%life'
ORDER BY release_year;
#Vraag4
INSERT INTO sakila.country(country_id, country)
VALUES(111,'Arubah');
#Vraag5
UPDATE sakila.country
SET country='Aruba'
WHERE country='Arubah';
#Vraag6
DELETE FROM sakila.country
WHERE country_id=111;
#Vraag7
SELECT DISTINCT first_name
FROM sakila.actor
WHERE first_name LIKE 'A%'
ORDER BY first_name;
#Vraag8
SELECT title
FROM sakila.film
WHERE release_year <= 2004;
#Vraag9
UPDATE sakila.rental
SET return_date = NULL
WHERE rental_id = 1000 /*hier wel return_date = NULL, want gaat om toekennen en niet
                         een vergelijking*/
#Vraag10
UPDATE sakila.rental
SET return_date = '2015-09-14'
WHERE return_date IS NULL;

#GEDETAILEERDER:
#Vraag1
SELECT F.title, F.description
FROM sakila.film F
WHERE F.release_year > 2013
ORDER BY F.title;
#Vraag2
SELECT C.last_name,C.email
FROM sakila.customer C
WHERE C.active = 0;
#Vraag3
SELECT F.title,F.special_features
FROM sakila.film F
WHERE F.title LIKE '%life'
ORDER BY F.release_year;
#Vraag4
INSERT INTO sakila.country (country_id,country)
VALUES (111,'Arubah');
#Vraag5
UPDATE sakila.country C
SET C.country = 'Aruba'
WHERE C.country = 'Arubah';
#Vraag6
DELETE FROM sakila.country
WHERE country_id = 111;
#Vraag7
SELECT DISTINCT A.first_name
FROM sakila.actor A
WHERE A.first_name LIKE 'A%'
ORDER BY A.first_name;
#Vraag8
SELECT F.title
FROM sakila.film F
WHERE F.release_year <= 2004;
#Vraag9
UPDATE sakila.rental R
SET R.return_date = NULL
WHERE R.inventory_id = 1000;
#Vraag10
UPDATE sakila.rental R
SET R.return_date = '2015-09-14'
WHERE R.return_date IS NULL;
