/*Geef en maandsalaris van medewerkers die een hoger maandsalaris dan de chef
met nummer 7698 hebben. Maak gebruik van een subquery*/
SELECT M.naam, M.maandsal
FROM cursus.medewerker M
WHERE M.maandsal > (
SELECT E.maandsal
FROM cursus.medewerker E
WHERE mnr=7698);
/*Naam en maandsalaris van medewerkers die een hoger maandsalaris dan hunchef hebben.*/
SELECT M.naam, M.maandsal
FROM cursus.medewerker M
WHERE M.maandsal >
(SELECT E.maandsal
FROM cursus.medewerker E
WHERE E.mnr=M.chef);
/*Naam en maandsalaris van medewerkers die qua maandsalaris boven het gemiddelde
van hun afdeling zitten.
*/
SELECT M.naam, M.maandsal
FROM cursus.medewerker M
WHERE M.maandsal >
(SELECT AVG(E.maandsal)
FROM cursus.medewerker E
WHERE E.afd=M.afd);
