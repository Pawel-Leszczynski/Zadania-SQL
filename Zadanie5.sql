#1. Załóż bazę o nazwie: Moje zainteresowania.
DROP DATABASE IF EXISTS Moje_Zainteresowania;
CREATE DATABASE Moje_Zainteresowania;
USE Moje_Zainteresowania;
#2. Załóż tabelę o nazwie: Zainteresowania i utwórz 4 kolumny, a także dobierz i ustaw dla każdej CONSTRAINTS:
DROP TABLE IF EXISTS Zainteresowania;
CREATE TABLE Zainteresowania (id INTEGER PRIMARY KEY AUTO_INCREMENT, nazwa TEXT NOT NULL, opis VARCHAR(100) NOT NULL, data_realizacji DATE);
#ID
#Nazwa 
#Opis
#Data realizacji
#3. Wprowadź dane tylko dla kolumn: Nazwa i Opis. (Min 5 pozycji)
INSERT INTO Zainteresowania (nazwa, opis) VALUES 
('Fotografia', 'Robienie zdjęć krajobrazów i portretów'),
('Programowanie', 'Tworzenie małych aplikacji w Pythonie'),
('Gry planszowe', 'Rozgrywki strategiczne z przyjaciółmi'),
('Kolarstwo', 'Wycieczki rowerowe w weekendy'),
('Gotowanie', 'Eksperymenty kulinarne w domu');
#4. Sprawdź, czy wszystkie dane wyświetlają się prawidłowo i co pojawia się w kolumnie ID i Data realizacji.
SELECT * FROM Zainteresowania;
#5. Dodaj nową pozycję wypełniając wszystkie dane.
INSERT INTO Zainteresowania (nazwa, opis, data_realizacji)
VALUES ('Podróże', 'Zwiedzanie nowych miejsc i kultur', '2025-08-24');
#6. Dodaj brakujące dane dla wiersza 4.
UPDATE Zainteresowania SET data_realizacji = '2025-06-20' WHERE id = 4;
#7. Sprawdź, czy dane zostały zmienione, wyświetlając wszystkie pozycje.
SELECT * FROM Zainteresowania;
#8. Usuń wszystkie wiersze, w których jakaś z pozycji jest pusta.
DELETE FROM Zainteresowania 
WHERE nazwa IS NULL 
OR opis IS NULL 
OR data_realizacji IS NULL;
#9. Sprawdź, czy dane zostały zmienione, wyświetlając je.
SELECT * FROM Zainteresowania;
