/*Geef de naam van de trainer(s) die voor 1960 geboren is (zijn). */
SELECT M.naam
FROM cursus.medewerker M
WHERE M.functie = 'trainer' AND M.gbdatum < '1960-01-01';

/*Werken er medewerkers op afdeling 10 die geen manager zijn?
 Geef de naam, functie en afdeling van de medewerker(s).*/
SELECT M.naam,M.functie,M.afd
FROM cursus.medewerker M
WHERE M.functie <> 'manager' AND M.afd = 10;

/*Geef een overzicht met de naam, de functie, de geboortedatum en
het maandsalaris van de medewerkers die tussen de 2000 en 3000
euro per maand verdienen. (Neem hierbij ook de mensen die
precies 2000 of 3000 verdienen mee.) Zorg hierbij dat de
medewerkers op de volgorde van de jongste naar de oudste staan.*/
SELECT M.naam, M.functie, M.gbdatum, M.maandsal
FROM cursus.medewerker M
WHERE M.maandsal >= 2000 AND M.maandsal <= 3000
ORDER BY M.gbdatum DESC;

/*Geef een overzicht van de cursussen die volgens de omschrijving
iets met Ontwerp te maken hebben. Zorg dat van deze cursussen
de cursuscode en omschrijving op het overzicht komen*/
