/*Welke medewerkers hebben de functie verkoper en hebben een
salaris van meer dan 1500?*/

SELECT M.naam,M.functie
FROM cursus.medewerker M
WHERE M.functie = 'verkoper' AND M.maandsal > 1500;

/*Welke medewerkers zijn òf functie verkoper òf hebben een salaris
van meer dan 1500 ? */
SELECT M.naam,M.functie
FROM cursus.medewerker M
WHERE M.functie = 'verkoper' OR M.maandsal > 1500;

/*Ontwerp een query die de gegevens laat zien van de trainers en
van de boekhouders.*/
SELECT *
FROM cursus.medewerker M
WHERE M.functie = 'trainer' OR M.functie = 'boekhouder';

/*Ontwerp een query die de gegevens laat zien van de
medewerkers die òf trainer zijn òf boekhouder met een salaris van > 1000*/
SELECT *
FROM cursus.medewerker M
WHERE M.functie = 'trainer' OR (M.functie = 'boekhouder' AND M.maandsal > 1000);
