#vijf functies zijn van toepassing tijdens het tentamen:MIN/MAX/SUM/AVG/COUNT.
 /*bepaal het gem. maandsalaris van alle medewerkers*/
 SELECT AVG(maandsal)
 FROM cursus.medewerker
 WHERE 
/*geef de namen van de medewerkers die meer verdienen dan het gemiddelde salaris*/

LET OP GEEN FUNCTIE IN WHERE!!!1111!!!!

SELECT
FROM cursus.medewerker
WHERE maandsal = (SELECT maandsal FROM cursus.medewerker) #nog nakijken!

/*per functie hoe vaak ze voorkomen.*/
SELECT functie, COUNT(*)
FROM cursus.medewerker
GROUP BY functie;

/*geef het totale jaarsalaris weer per afdeling. Maak een query om onderstaand
resultaat te krijgen.*/
SELECT A.naam Afdelingsnaam, SUM(maandsal)*12 'Totaal jaarsalaris'
#gebruik van '' door de spatie
FROM cursus.afdeling A
LEFT JOIN cursus.medewerker M ON afd=anr
GROUP BY A.naam;

/*Welke medewerkers hebben meer dan 1 keer lesgegeven?*/
SELECT M.naam, COUNT(*)aantal
FROM cursus.medewerker M
JOIN cursus.uitvoering ON cursus.mnr=docent
GROUP BY naam
HAVING COUNT(*)>1;
