#Gevraagd de medewerkernaam en de naam en plaats van de afdeling waar de
#medewerker werkt.
SELECT M.naam, A.naam, A.locatie
FROM cursus.medewerker M JOIN cursus.afdeling A ON M.afd = A.anr;

SELECT M.NAAM, A.NAAM, A.LOCATIE
FROM cursus.afdeling A LEFT JOIN cursus.medewerker M ON A.ANR = M.AFD;

/*Gevraagd wordt een lijst met de cursusomschrijving en de begindatum van de
cursussen die uitgevoerd worden in DE MEERN. Sorteer deze lijst op alfabetische volgorde van cursusomschrijving.*/

SELECT C.omschrijving, U.begindatum, locatie
FROM cursus.cursus C LEFT JOIN cursus.uitvoering U ON C.code = U.cursus
WHERE U.locatie = 'De Meern'
ORDER BY C.omschrijving;

/*Geef een overzicht van de medewerkernaam, cursuscode en
evaluatie van de ingeschreven cursisten*/

SELECT naam, cursus, evaluatie
FROM cursus.medewerker M JOIN cursus.inschrijving I ON M.mnr=I.cursist;

/*Geef een overzicht van de medewerkers van de afdelingen die zich
bevinden op de locatie Utrecht. Zorg dat het medewerkersnummer, de
naam van de medewerker en de naam van zijn/haar afdeling op dit
overzicht staan.*/
SELECT mnr,M.naam,A.naam
FROM cursus.medewerker M JOIN cursus.afdeling A ON M.afd = A.anr
WHERE locatie = 'Utrecht';

/*Geef een overzicht van de medewerkers die een cursus gevolgd
hebben en de evaluatie nog niet hebben ingevuld met daarop de
medewerkernaam en de cursusomschrijving en begindatum van de
gevolgde cursus (aanwijzing: gebruik EVALUATIE IS NULL)
*/

SELECT M.naam,C.omschrijving, begindatum
FROM Medewerker M JOIN Inschrijving I
ON M.mnr = I.cursist
JOIN Cursus C ON I.cursus = C.code
WHERE evaluatie IS NULL;

/*Geef een overzicht van de namen van de docenten die lesgeven in
 DE MEERN of UTRECHT.*/

SELECT DISTINCT naam
FROM cursus.medewerker M JOIN cursus.uitvoering U ON M.mnr = U.docent
WHERE locatie = 'De Meern' OR locatie = 'Utrecht';

/*Geef een overzicht van de naam van alle afdelingen en daarbij de
naam van het hoofd van die afdeling.*/

SELECT A.naam,M.naam
FROM cursus.afdeling A JOIN cursus.medewerker M
ON A.hoofd = M.mnr

/*Aan welke afdeling(en) zijn geen medewerkers verbonden?
 Vermeld de afdelingsnaam.*/

SELECT A.naam
FROM cursus.afdeling A LEFT JOIN cursus.medewerker M
ON A.anr = M.afd
WHERE M.afd IS NULL;

/*Zijn er geplande cursussen, waarvoor zich (nog) geen cursisten
hebben ingeschreven? Vermeld de cursuscode, de begindatum en de
docentcode, voor zover die bekend is.
*/
SELECT U.cursus, U.begindatum, docent
FROM cursus.uitvoering U LEFT JOIN cursus.inschrijving I
ON U.cursus = I.cursus AND U.begindatum = I.begindatum
WHERE I.cursus IS NULL;

/*Welke medewerkers (met naam) treden niet op als docent?*/
SELECT naam
FROM cursus.medewerker M LEFT JOIN cursus.uitvoering U
ON M.mnr = U.docent
WHERE U.docent IS NULL;
