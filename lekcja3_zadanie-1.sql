# 1. Stwórz Bazę Pracownicy
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
Imie TEXT NOT NULL, 
Nazwisko TEXT NOT NULL, 
Wiek INTEGER NOT NULL, 
Kurs TEXT NOT NULL );
# 3. Każdą tabelę uzupełnij danymi z tabeli z załącznika.
# 4. Wyświetl listę pracowników starszych niż 30 lat.
SELECT * FROM pracownicy WHERE wiek > 30;

# 5. Wyświetl listę pracowników młodszych niż 30 lat.
SELECT * FROM pracownicy WHERE wiek < 30;

# 6. Wyświetl listę pracowników, których nazwisko zaczyna się na „K” i kończy na „ki”
SELECT * FROM pracownicy WHERE nazwisko LIKE "k%ki";

# 7. Zmień nazwę kolumny „ID” na „NR”
ALTER TABLE pracownicy RENAME COLUMN ID TO NR;
SELECT * FROM pracownicy;

# 8. Wyświetl pozycje, w których są puste pola.
UPDATE pracownicy SET Wiek = NULL WHERE Wiek = 31 AND imie LIKE '%a';
SELECT * FROM pracownicy
WHERE imie IS NULL 
OR nazwisko IS NULL 
OR wiek IS NULL 
OR kurs IS NULL;

# 9. Wyświetl wszystkich pracowników z kursu „Java”.
SELECT * FROM pracownicy WHERE kurs = 'java';
