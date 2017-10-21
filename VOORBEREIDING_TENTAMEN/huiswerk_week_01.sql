SELECT S.voornaam,S.achternaam
FROM student.student S
WHERE woonplaats != 'Zwolle'
ORDER BY S.achternaam;

SELECT S.voornaam
FROM student.student S
WHERE woonplaats <> 'Kampen';

SELECT S.achternaam
FROM student.student S
WHERE S.woonplaats = 'Zwolle'
ORDER BY S.achternaam DESC;

SELECT S.achternaam, S.voornaam
FROM student.student S
WHERE S.studentnummer = 's1000200';

SELECT S.adres, S.woonplaats
FROM student.student S
WHERE S.voornaam = 'Sjors';

SELECT DISTINCT S.woonplaats
FROM student.student S;
