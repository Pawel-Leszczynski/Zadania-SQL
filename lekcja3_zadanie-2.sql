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
Imie TEXT NOT NULL, 
Nazwisko TEXT NOT NULL, 
Wiek INTEGER NOT NULL, 
Kurs TEXT NOT NULL );
# 4. Wyświetl listę pracowników w wieku 28 lat.
SELECT * FROM pracownicy WHERE wiek = 28;
# 5. Wyświetl listę pracowników w wieku 30 lat i młodszych.
SELECT * FROM pracownicy WHERE wiek <= 30;
# 6. Wyświetl listę pracowników, których nazwisko zawiera „ski”.
SELECT * FROM pracownicy WHERE nazwisko LIKE "%ski";
# 7. Wyświetl listę pracowników z ID: 1,4,7,18,20.
SELECT * FROM pracownicy WHERE NR IN (1,4,7,18,20);
# 8. Wyświetl listę pracowników z wprowadzonymi kompletnymi danymi.
SELECT * FROM pracownicy WHERE 
imie  IS NOT NULL
AND nazwisko  IS NOT NULL 
AND wiek  IS NOT NULL
AND kurs  IS NOT NULL;
# 9. Wyświetl wszystkich pracowników, którzy nie prowadzą kursu DS
SELECT * FROM pracownicy WHERE kurs != "DS.";
