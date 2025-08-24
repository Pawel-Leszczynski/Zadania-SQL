#1. Stwórz bazę danych
DROP DATABASE IF EXISTS my_db ;
CREATE DATABASE my_db;
USE my_db;
#2. Stwórz tabelę nazwaną Biblioteczka z trzema kolumnami:
#ID, który przechowuje typ danych INTEGER
#Tytuł, który przechowuje typ TEXT
#Data zakupu, która przechowuje typ DATA

DROP TABLE IF EXISTS biblioteczka;
CREATE TABLE biblioteczka (id INTEGER PRIMARY KEY, tytul TEXT, data DATE);
#3. Dodaj książkę o Twoim ulubionym tytule do Biblioteczki wraz z pozostałymi danymi.
INSERT INTO biblioteczka (id ,tytul, data) VALUES (1, "Duna", "1965-08-01");
#4. Sprawdź, czy książka została dodana do bazy danych poprzez jej wyświetlenie.
SELECT * FROM biblioteczka;
#5. Dodaj kolejne dwie ulubione książki do Biblioteczki wraz z identyfikatorem (wg. kolejności którą najbardziej lubisz) i pozostałymi danymi.
INSERT INTO biblioteczka (id, tytul, data) VALUES (2, 'Harry Potter', '1997-06-26');
INSERT INTO biblioteczka (id, tytul, data) VALUES (3, 'Władca Pierścieni', '1954-07-29');
#6. Zmień ulubioną książkę na książkę, która najmniej Ci się podoba.
UPDATE biblioteczka SET tytul = "Folwark Zwierzęcy", data = "1945-08-17" WHERE id = 3;
SELECT * FROM biblioteczka;
#7. Dodaj nową kolumnę o nazwie Autor.
ALTER TABLE biblioteczka ADD COLUMN autor TEXT;
#8. Uzupełnij kolumnę Autor danymi dla każdego rekordu.
UPDATE biblioteczka SET autor = "Frank Herbert" WHERE id = 1;
UPDATE biblioteczka SET autor = "J.K. Rowling" WHERE id = 2;
UPDATE biblioteczka SET autor = "George Orwell" WHERE id = 3;
SELECT * FROM biblioteczka;
#9. Usuń pozycje z ulubionymi książkami.
DELETE FROM biblioteczka WHERE id = 2;
DELETE FROM biblioteczka WHERE id = 3;
#10. Wyświetl dane autora dla pozycji, która została w bazie
SELECT autor FROM biblioteczka;
