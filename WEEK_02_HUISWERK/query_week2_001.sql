/*Geef een overzicht met de naam en de functie van de medewerkers die op
afdeling 30 werken.*/

SELECT naam, functie
FROM cursus.Medewerker
WHERE afd = 30;

/*Welke medewerkers zijn voor 1960 geboren? Vermeld de naam en de geboortedatum.*/
SELECT naam, gbdatum
FROM cursus.Medewerker
WHERE gbdatum < '1960-01-01';

/*Wie zijn de verkopers?*/
SELECT *
FROM cursus.Medewerker
WHERE functie = 'VERKOPER';

/*Welke cursussen worden er aangeboden. Laat de gegevens zien op volgorde van
(cursus)lengte.*/
SELECT *
FROM cursus.Cursus
ORDER BY lengte;

/*Welke cursussen zijn korter dan drie dagen. Geef alleen de omschrijving,
maar sorteer dat op cursuscode.*/
SELECT omschrijving
FROM cursus.Cursus
WHERE lengte < 3
ORDER BY code;

/*Geef een overzicht van de naam en het jaarsalaris van alle medewerkers behalve
de directeur.(Je behoeft geen rekening te houden met vakantiegeld en andere extra
uitkeringen.)Gebruik NOT.*/
SELECT naam, maandsal*12
FROM cursus.Medewerker
WHERE NOT functie = 'DIRECTEUR'; #mag ook <>'DIRECTEUR'

/*Van welke inschrijvingen is het evaluatiecijfer bekend? Zorg dat deze lijst
gesorteerd is op cursistcode. Bij dezelfde cursist moeten de inschrijvingen op
volgorde van begindatum staan.*/
SELECT *
FROM cursus.Inschrijving
WHERE evaluatie IS NOT NULL
ORDER BY cursist, begindatum;
