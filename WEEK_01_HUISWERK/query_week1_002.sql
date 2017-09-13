INSERT INTO student.student (studentnummer, voornaam, achternaam, woonplaats)
VALUES ('s1234567','Klaas','Hendriksen','Zwolle');

--resultaat: 1 rows affected. 0 changed.

--Kijk of Klaas nu ook teruggegeven wordt bij een query waarin je alle Zwolse
--studenten toont.
SELECT voornaam
FROM student.student
WHERE woonplaats = 'Zwolle';

--Voer vervolgens dezelfde INSERT nogmaals uit en bekijk de foutmelding.
--Wat is er hier in normale bewoordingen aan de hand? Waarom mag dat niet?
INSERT INTO student.student (studentnummer, voornaam, achternaam, woonplaats)
VALUES ('s1234567','Klaas','Hendriksen','Zwolle');
--Duplicate entry for key 'PRIMARY'
