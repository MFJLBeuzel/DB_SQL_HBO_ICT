--Welke woonplaatsen staan er allemaal in de database?Zorg dat er geen
--dubbelegetoond worden.
SELECT DISTINCT woonplaats
FROM student.student;

--Welke verschillende woonplaatsen staan er in de tabel waarin een letter a
--voorkomt
SELECT DISTINCT woonplaats
FROM student.student
WHERE woonplaats LIKE '%a%';

--Wijzig de achternaam van zojuist toegevoegde Klaas in Hendrikse i.p.v. Hendriksen.
UPDATE student.student
SET achternaam = 'Hendrikse'
WHERE studentnummer = 's1234567';

--Verwijder alle studenten met de voornaam Klaas.
DELETE FROM student.student WHERE voornaam = 'Klaas';
