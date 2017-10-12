/*Geef een overzicht van alle medewerkers met daarop hun medewerkersnummer,
naam, maandsalaris en het maandsalaris in amerikaanse dollar. Ga daarbij uit
van de volgende koersgegevens: 1 euro = 1,279 amerikaanse dollar.
|Zorg dat de kolom waarin het maandsalaris in dollar vermeld staat als kop
‘maandsal_in_dollar’ krijgt en dat de bedragen in deze kolom afgerond worden
 op 2 cijfers na de komma.*/

 SELECT mnr,naam, maandsal,ROUND(maandsal * 1.279,2) maandsal_in_dollar
 FROM cursus.medewerker;

 /*Geef alle medewerkers een loonsverhoging van 10 %.*/
UPDATE cursus.medewerker
SET maandsal = maandsal *1,1;

/*Geef alle medewerkers van afdeling 30 een loonsverhoging van 10 %.*/
UPDATE cursus.medewerker
SET maandsal = maandsal *1.1;

/*Geef alle medewerkers van de afdeling Verkoop een loonsverhoging
 van 10 %.*/
UPDATE cursus.medewerker
SET maandsal * 1.1
WHERE afd = (
  SELECT anr
  FROM cursus.afdeling
  WHERE naam = 'Verkoop'
);
