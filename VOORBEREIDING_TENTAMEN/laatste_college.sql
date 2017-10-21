UPDATE student.student
SET klas = 'ICTM1a', naam = 'Heering'
WHERE studentnummer = 'S1068845';

UPDATE student.student
SET klas = 'ICTM1T'
WHERE student.studentnummer IN
(SELECT student.studentnummer
FROM student.cijfer
WHERE cijfer >= 9);

DELETE
FROM student.student S
WHERE S.studentnummer NOT IN (SELECT)

SELECT
FROM student.cijfer C
WHERE C.cij

SELECT C.cijfer, S.naam, C.datum, C.vak
FROM student.student S
INNER JOIN cijfer C ON S.studentnummer=C.studentnummer;


SELECT klas, AVG(cijfer) gemiddelde
FROM cijfer
JOIN student ON cijfer.studentnummer = student.studentnummer
WHERE vak = 'ICT.P.SQL' AND datum = '19-11-2010'
GROUP BY klas;
