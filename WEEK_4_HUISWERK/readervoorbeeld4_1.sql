SELECT M.naam
FROM cursus.medewerker M
WHERE /*{docent geeft les in Utrecht}*/

SELECT U.docent
FROM cursus.uitvoering U
WHERE U.locatie = 'Utrecht'

#combineren m.b.v. subquery
SELECT M.naam
FROM cursus.medewerker M
WHERE M.mnr IN (
  SELECT U.docent
  FROM cursus.uitvoering U
  WHERE U.locatie = 'Utrecht');

/* Welke medewerkers (met naam) zijn nooit docent geweest voor een cursus en staan
daar ook niet voor ingepland? Geef de lijst op volgorde van naam. */
