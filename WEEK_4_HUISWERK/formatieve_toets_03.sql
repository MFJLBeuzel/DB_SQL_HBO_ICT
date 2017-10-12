/*Geef een overzicht van alle klanten
die wonen in het district Sucre of een
postcode hebben tussen de 30000 en
40000 (inclusief 30000 en 40000).
Geef achternaam, district en postcode
en sorteer op postcode (oplopend).*/
SELECT last_name,district,postal_code
FROM sakila.address A JOIN sakila.customer C
ON A.address_id=C.address_id
WHERE district = 'Sucre'
OR postal_code >= 3000
AND postal_code <= 4000
ORDER BY postal_code;

/*Maak een lijst van de ratings die
voorkomen bij de films die in 2012,
2013 en 2014 uitgebracht zijn.*/
SELECT DISTINCT rating
FROM sakila.film
WHERE release_year = 2012
OR release_year = 2013
OR release_year = 2014;
