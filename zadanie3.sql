#1. Załóż bazę o nazwie: Lista Prezentów.
DROP DATABASE IF EXISTS Lista_Prezentow;
CREATE DATABASE Lista_Prezentow;
USE Lista_Prezentow;
#2. Załóż tabelę o nazwie: Prezenty_2020 i utwórz 5 kolumn, a także dobierz i ustaw dla każdej constraints:
DROP TABLE IF EXISTS Prezenty_2020;
CREATE TABLE Prezenty_2020 (
id INTEGER PRIMARY KEY AUTO_INCREMENT,
imie_obdarowanego TEXT NOT NULL,
pomysl_na_prezent TEXT NOT NULL,
cena DECIMAL(8,2) NOT NULL CHECK (cena >= 0),
miejsce_zakupu TEXT NOT NULL);

#ID
#Imię obdarowanego
#Pomysł na prezent
#Cena
#Miejsce zakupu
#3. Wprowadź dane osób, dla których kupujesz świąteczne prezenty (min. 5). Każda pozycja ma mieć wypełnione wszystkie dane zgodnie z wymaganiem.
INSERT INTO Prezenty_2020 (imie_obdarowanego, pomysl_na_prezent, cena, miejsce_zakupu) VALUES 
('Anna', 'Książka fantasy', 59.99, 'Empik'),
('Piotr', 'Słuchawki bezprzewodowe', 199.99, 'MediaMarkt'),
('Maria', 'Kubek personalizowany', 29.50, 'Allegro'),
('Jan', 'Gra planszowa', 89.90, 'Empik'),
('Karolina', 'Zestaw do herbaty', 49.00, 'Sklep internetowy');
#4. Sprawdź, czy wszystkie dane wyświetlają się prawidłowo.
SELECT * FROM Prezenty_2020;

#5. Zmień pomysł na prezent dla osoby zapisanej w pozycji 3 na wartość „Rower”.
UPDATE Prezenty_2020 SET pomysl_na_prezent = 'Rower' WHERE id = 3;
#6. Sprawdź, czy dane zostały zmienione wyświetlając tylko tę pozycję.
SELECT * FROM Prezenty_2020 WHERE id = 3;
#7. Usuń pozycję 1.
DELETE FROM Prezenty_2020 WHERE id = 1;
#8. Sprawdź, czy dane zostały zmienione, wyświetlając wszystkie pozycje.
SELECT * FROM Prezenty_2020;
#9. Usuń kolumnę o nazwie Miejsce zakupu.
ALTER TABLE Prezenty_2020 DROP COLUMN miejsce_zakupu;
#10. Wyświetl zawartość kolumny Imię obdarowanego dla pozycji 3,4,5 i sprawdź, czy dane są prawidłowe.
SELECT imie_obdarowanego FROM Prezenty_2020 WHERE id >= 3 AND id <= 5;
