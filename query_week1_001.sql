SELECT voornaam, achternaam
FROM student.student
WHERE woonplaats = 'Zwolle'
ORDER BY voornaam ASC, achternaam DESC;

#Laat alleen de voornamen van studenten zien die niet in Kampen wonen.
SELECT voornaam
FROM student.student
WHERE woonplaats <> 'Kampen';

#Laat de achternamen zien van de Zwolse studenten. Sorteer aflopend (Z->A) op
#achternaam.
SELECT achternaam
FROM student.student
WHERE woonplaats = 'Zwolle'
ORDER BY achternaam DESC;

#Laat de achternaam en woonplaats zien van de student met studentnummer s1000200.
SELECT achternaam, woonplaats
FROM student.student
WHERE studentnummer = 'S1000200';

#Wat zijn de adressen en woonplaatsen van de studenten die als voornaam Sjors hebben?
SELECT adres, woonplaats
FROM student.student
WHERE voornaam = 'Sjors'

#Welke woonplaatsen staan er allemaal in de database?
SELECT DISTINCT woonplaats
FROM student.student;
