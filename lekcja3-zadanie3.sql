# 1. Stwórz Bazę Pracownicy
-- DROP DATABASE IF EXISTS pracownicy;

CREATE DATABASE pracownicy;
USE pracownicy;
SET SQL_SAFE_UPDATES = 0;
# 2. Stwórz Tabelę Pracownicy z pięcioma kolumnami, a także dobierz i ustaw dla każdej CONSTRAINTS:

# ID
# Imię
# Nazwisko
# Wiek
# Kurs
CREATE TABLE pracownicy (
ID INTEGER PRIMARY KEY AUTO_INCREMENT,
Imie TEXT, 
Nazwisko TEXT, 
Wiek INTEGER, 
Kurs TEXT);
# 4. Wyświetl listę pracowników o Nazwisku: KOWALCZYK.
SELECT * FROM pracownicy WHERE nazwisko IN ("KOWALCZYK");
# 5. Wyświetl listę pracowników w wieku od 30 lat do 40 lat.
SELECT * FROM pracownicy WHERE wiek BETWEEN 30 AND 40;
# 6. Wyświetl listę pracowników, których nazwisko nie zawiera „and”.
UPDATE pracownicy SET nazwisko = "ZANDRYCHOWICZ" WHERE nazwisko IN ("JANKOWSKI");
SELECT * FROM pracownicy WHERE nazwisko NOT LIKE "%and%";
# 7. Wyświetl listę pracowników z ID od 1 do 7.
SELECT * FROM pracownicy WHERE NR <= 7;
# 8. Wyświetl listę pracowników z brakującymi danymi.
SELECT * FROM pracownicy WHERE NR IS NULL
OR imie IS NULL
OR nazwisko IS NULL
OR wiek IS NULL
OR kurs IS NULL;

# 9. Wyświetl wszystkich pracowników, którzy nie prowadzą żadnego kursu.

## wsawiam wartosci zeby byl jakis wynik zapyania.
INSERT INTO pracownicy (imie,nazwisko,wiek) VALUES 
("KRZYSZTOF", "GROSZEK", 42),
("ADAM", "ADAMCZYK", 29),
("MACIEJ", "KOSCIAN", 50);
SELECT * FROM pracownicy WHERE kurs IS NULL;
## auto_increment dla NR nie zadzialał, dlaczego? 
