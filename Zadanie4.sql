#1. Załóż bazę o nazwie: Lista Pracowników.
DROP DATABASE IF EXISTS Lista_Pracownikow;
CREATE DATABASE Lista_Pracownikow;
USE Lista_Pracownikow;
#2. Załóż tabelę o nazwie: Pracownicy i utwórz 5 kolumn, a także dobierz i ustaw dla każdej constraints:
DROP TABLE IF EXISTS Pracownicy;
CREATE TABLE Pracownicy (id INTEGER PRIMARY KEY AUTO_INCREMENT, imie TEXT NOT NULL, nazwisko TEXT NOT NULL, stanowisko TEXT NOT NULL, dzial TEXT NOT NULL);
#ID
#Imię 
#Nazwisko
#Stanowisko
#Dział
#3. Wprowadź dane osób kilku, z którymi pracujesz w Swojej firmie. Każda pozycja ma mieć wypełnione wszystkie dane zgodnie z wymaganiem.
INSERT INTO Pracownicy (imie, nazwisko, stanowisko, dzial) VALUES
('Anna', 'Kowalska', 'Programista', 'Backend'),
('Piotr', 'Nowak', 'Programista', 'Frontend'),
('Maria', 'Wiśniewska', 'Tester', 'QA'),
('Jan', 'Lewandowski', 'Project Manager', 'Zarządzanie Projektami'),
('Karolina', 'Zielińska', 'DevOps Engineer', 'Infrastruktura');
#4. Sprawdź, czy wszystkie dane wyświetlają się prawidłowo.
SELECT * FROM Pracownicy;
#5. Dodaj kolumnę: Data zatrudnienia.
ALTER TABLE Pracownicy ADD COLUMN data_zatrudnienia DATE;

-- ALTER TABLE Pracownicy MODIFY COLUMN data_zatrudnienia DATE NOT NULL;
SELECT * FROM Pracownicy;
#6. Dodaj nowego pracownika uzupełniając wszystkie dane.
INSERT INTO Pracownicy (imie, nazwisko, stanowisko, dzial, data_zatrudnienia) 
VALUES ('Pawel', 'Leszczyński', 'Data Enginer', 'Bazy Danych', '2023-04-15');
#7. Sprawdź, czy dane zostały zmienione, wyświetlając wszystkie pozycje.
SELECT * FROM Pracownicy;
#8. Uzupełnij wszystkie brakujące dane w kolumnie o nazwie Data Zatrudnienia.
SET SQL_SAFE_UPDATES = 0;
UPDATE Pracownicy SET data_zatrudnienia = '2020-01-01' WHERE data_zatrudnienia IS NULL;
#9. Sprawdź, czy dane zostały zmienione, wyświetlając je.

SELECT * FROM Pracownicy;
