/* Geef een overzicht van het aantal inschrijvingen per cursus*/
SELECT code, COUNT(cursus)
FROM cursus.cursus
LEFT OUTER JOIN cursus.inschrijving ON code = cursus
GROUP BY code;

/*Geef een overzicht van het gemiddelde salaris per afdeling*/
SELECT anr, AVG(maandsal)
FROM cursus.afdeling
LEFT OUTER JOIN cursus.medewerker ON anr=afd
GROUP BY anr;

/*Welke cursussen (omschrijving) hebben minder dan 5 inschrijvingen?*/
SELECT omschrijving
FROM cursus LEFT OUTER JOIN cursus.inschrijving ON code=cursus
GROUP BY omschrijving
HAVING COUNT(cursus) < 5;

/* Geef van de cursussen die vanaf het jaar 1996 gegeven zijn per cursus
 het aantal cursisten dat die cursus in de loop van de tijd gevolgd heeft
 en het gemiddelde evaluatiecijfer (d.w.z. het gemiddelde van de
 evaluatiecijfers die aan de betreffende cursus gegeven zijn).*/
SELECT cursus,COUNT(*),AVG(evaluatie)
FROM cursus.inschrijving
WHERE begindatum>='1996-01-01'
GROUP BY cursus;
