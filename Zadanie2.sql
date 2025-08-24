#1. Załóż bazę o nazwie: School_Coding.
DROP DATABASE IF EXISTS School_Coding;
CREATE DATABASE School_Coding;
USE School_Coding;
#2. Załóż tabelę o nazwie: Mentors i utwórz 6 kolumn, a także dobierz i ustaw dla każdej constraints:
DROP TABLE IF EXISTS Mentors;
CREATE TABLE Mentors (id INTEGER PRIMARY KEY, imie TEXT, nazwisko TEXT, specjalizacja TEXT, data_zatrudnienia DATE, data_zwolnienia DATE);
#ID
#Imię 
#Nazwisko
#Specjalizacja
#Data zatrudnienia
#Data zwolnienia
#3. Wprowadź dane (10 pozycji od 1 do 10). Każda pozycja ma mieć wypełnione wszystkie dane).
INSERT INTO Mentors (id, imie, nazwisko, specjalizacja, data_zatrudnienia, data_zwolnienia) VALUES 
(1, 'Anna', 'Kowalska', 'Python', '2015-09-01', NULL),
(2, 'Piotr', 'Nowak', 'Java', '2017-03-15', NULL),
(3, 'Maria', 'Wiśniewska', 'C++', '2012-11-20', NULL),
(4, 'Jan', 'Lewandowski', 'JavaScript', '2018-01-05', NULL),
(5, 'Karolina', 'Zielińska', 'Ruby', '2014-04-10', '2019-12-31'),
(6, 'Tomasz', 'Kaczmarek', 'PHP', '2016-10-01', NULL),
(7,'Ewa', 'Mazur', 'Go', '2019-02-14', NULL),
(8, 'Michał', 'Sikora', 'C#', '2013-07-22', '2021-05-01'),
(9, 'Dorota', 'Pawlak', 'Swift', '2020-01-10', NULL),
(10, 'Krzysztof', 'Wójcik', 'TypeScript', '2011-12-01', '2018-08-31');

#4. Sprawdź, czy wszystkie dane wyświetlają się prawidłowo poprzez ich wyświetlenie.
SELECT * FROM Mentors;
#5. Zmień Nazwisko Mentora w pozycji nr 5.
UPDATE Mentors SET Nazwisko = 'Pękala' WHERE id = 5;
#6. Sprawdź, czy dane zostały zmienione, wyświetlając tylko tę pozycję.
SELECT Nazwisko FROM Mentors WHERE id = 5;
#7. Zmień specjalizację mentora w pozycji 9.
UPDATE Mentors SET Specjalizacja = 'SQL' WHERE id = 9;
#8. Sprawdź, czy dane zostały zmienione, wyświetlając tylko tę pozycję.
SELECT * FROM Mentors WHERE id = 9;
#9. Dodaj kolumnę o nazwie Wynagrodzenie, a także dobierz i ustaw constraints.
ALTER TABLE Mentors ADD COLUMN Wynagrodzenie INTEGER NOT NULL DEFAULT 0;
SELECT * FROM Mentors;
#10. Uzupełnij kolumnę wartością 1000 dla pozycji 1,2 oraz 3.
UPDATE Mentors SET Wynagrodzenie = 1000 WHERE id <= 3;
#11. Wyświetl pozycję 1,2,3 i sprawdź, czy dane są prawidłowe.
SELECT * FROM Mentors WHERE id <= 3;
