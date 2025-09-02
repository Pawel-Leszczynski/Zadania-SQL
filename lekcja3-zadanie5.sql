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

# 4. Wyświetl listę pracowników wg kolumny Imię, eliminując powtarzające się pozycje.
SELECT DISTINCT imie FROM pracownicy;
# 5. Wyświetl listę pracowników wg kolumny Nazwisko eliminując powtarzające się pozycje.
SELECT DISTINCT nazwisko FROM pracownicy;
# 6. Wyświetl kursy prowadzone przez pracowników o Nazwisku: „Kowalczyk”.
SELECT Szkolenie FROM pracownicy WHERE nazwisko =  "Kowalczyk";
# 7. Wyświetl listę pracowników, dla których nie znamy wieku.
SELECT * FROM pracownicy WHERE wiek IS NULL;
# 8. Wyświetl wiek pracowników o Imieniu „Patryk”.
SELECT wiek FROM pracownicy WHERE imie = "Patryk";
# 9. Zmień nazwę tabeli z  „Pracownicy” na „Mentorzy”.
ALTER TABLE pracownicy  RENAME TO mentorzy;
SELECT * FROM mentorzy;
