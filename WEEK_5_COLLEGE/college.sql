SELECT *
FROM medewerker;

SELECT AVG(maandsal)
FROM cursus.medewerker;

SELECT afd, AVG(maandsal)
FROM cursus.medewerker
GROUP BY afd;

SELECT functie, COUNT(*)
FROM cursus.medewerker
GROUP BY functie;

SELECT A.naam Afdelingsnaam, SUM(maandsal*12) 'Totaal jaarsalaris'
FROM cursus.afdeling A
LEFT JOIN cursus.medewerker ON afd=anr
GROUP BY A.naam;

SELECT afd, AVG(maandsal)
FROM cursus.medewerker M
WHERE mnr > 7700
GROUP BY afd
HAVING AVG(maandsal) >= 2000;

SELECT naam, COUNT(*) aantal
FROM cursus.medewerker
JOIN uitvoering ON mnr=docent
GROUP BY naam
HAVING COUNT(*) > 1;
