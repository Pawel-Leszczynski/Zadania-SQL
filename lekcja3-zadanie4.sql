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

# 4. Wyświetl listę pracowników o Imieniu: Anna.
SELECT * FROM pracownicy WHERE imie IN ("anna");
# 5. Wyświetl listę pracowników z brakującą daną w kolumnie Imię.
SELECT * FROM pracownicy WHERE imie IS NULL;
# 6. Wyświetl kursy prowadzone przez pracowników w wieku od 30 lat do 40 lat.
SELECT kurs FROM pracownicy WHERE wiek BETWEEN 30 AND 40 GROUP BY kurs;
# 7. Wyświetl wiek pracowników z ID od 1 do 7.
SELECT nr, wiek FROM pracownicy WHERE NR <= 7;

# 8. Wyświetl listę pracowników z brakującymi danymi w kolumnie wiek.
SELECT * FROM pracownicy WHERE wiek IS NULL;
# 9. Zmień nazwę kolumny „Kurs” na „Szkolenie”.

ALTER TABLE pracownicy RENAME COLUMN kurs TO Szkolenie;
SELECT* FROM pracownicy;
