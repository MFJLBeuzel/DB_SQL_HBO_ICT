/*Hoeveel geld moet de boekhouder elke maand van de bank halen
 om de loonzakjes te vullen?*/

 SELECT SUM(maandsal)
 FROM cursus.medewerker;

 /*Hoe hoog is het gemiddelde maandsalaris van de managers?*/
 SELECT AVG(maandsal)
 FROM cursus.medewerker
 WHERE functie = 'MANAGER';

 /*Hoeveel mensen hebben zich voor de cursus FOR ingeschreven?*/
SELECT COUNT(DISTINCT cursist)
FROM cursus.inschrijving
WHERE cursus = 'FOR';
