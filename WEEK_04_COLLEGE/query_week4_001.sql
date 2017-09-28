#subquery
SELECT naam
FROM cursus.medewerker
WHERE mnr IN
(SELECT docent
FROM cursus.uitvoering
WHERE locatie = 'Utrecht');

/*Welke medewerkers (naam) zijn chef? Maak gebruik
van een subquery.*/
SELECT naam
FROM cursus.medewerker
WHERE mnr IN
(SELECT chef FROM cursus.medewerker);

#LET OP GEEN JOIN NA UPDATE IN STATEMENT. JOIN MAG WEL IN DE subquery!
