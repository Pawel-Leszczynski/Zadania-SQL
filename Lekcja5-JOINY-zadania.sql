CREATE DATABASE wiele_tabel_zadanie;
USE wiele_tabel_zadanie;

CREATE TABLE `agents` (
`AGENT_CODE` varchar(6) PRIMARY KEY NOT NULL DEFAULT '',
`AGENT_NAME` varchar(40) DEFAULT NULL,
`WORKING_AREA` varchar(35) DEFAULT NULL,
`COMMISSION` decimal(10,2) DEFAULT NULL,
`PHONE_NO` varchar(15) DEFAULT NULL,
`COUNTRY` varchar(25) DEFAULT NULL
);

INSERT INTO `agents` (`AGENT_CODE`, `AGENT_NAME`, `WORKING_AREA`, `COMMISSION`, `PHONE_NO`, `COUNTRY`) VALUES
('A007', 'Ramasundar', 'Bangalore', '0.15', '077-25814763', '\r'),
('A003', 'Alex', 'London', '0.13', '075-12458969', '\r'),
('A008', 'Alford', 'New York', '0.12', '044-25874365', '\r'),
('A011', 'Ravi Kumar', 'Bangalore', '0.15', '077-45625874', '\r'),
('A010', 'Santakumar', 'Chennai', '0.14', '007-22388644', '\r'),
('A012', 'Lucida', 'San Jose', '0.12', '044-52981425', '\r'),
('A005', 'Anderson', 'Brisban', '0.13', '045-21447739', '\r'),
('A001', 'Subbarao', 'Bangalore', '0.14', '077-12346674', '\r'),
('A002', 'Mukesh', 'Mumbai', '0.11', '029-12358964', '\r'),
('A006', 'McDen', 'London', '0.15', '078-22255588', '\r'),
('A004', 'Ivan', 'Torento', '0.15', '008-22544166', '\r'),
('A009', 'Benjamin', 'Hampshair', '0.11', '008-22536178', '\r');

SELECT * FROM agents;


CREATE TABLE `customer` (
`CUST_CODE` varchar(6) PRIMARY KEY NOT NULL,
`CUST_NAME` varchar(40) NOT NULL,
`CUST_CITY` varchar(35) DEFAULT NULL,
`WORKING_AREA` varchar(35) NOT NULL,
`CUST_COUNTRY` varchar(20) NOT NULL,
`GRADE` decimal(10,0) DEFAULT NULL,
`OPENING_AMT` decimal(12,2) NOT NULL,
`RECEIVE_AMT` decimal(12,2) NOT NULL,
`PAYMENT_AMT` decimal(12,2) NOT NULL,
`OUTSTANDING_AMT` decimal(12,2) NOT NULL,
`PHONE_NO` varchar(17) NOT NULL,
`AGENT_CODE` varchar(6) DEFAULT NULL
);

INSERT INTO `customer` (`CUST_CODE`, `CUST_NAME`, `CUST_CITY`, `WORKING_AREA`, `CUST_COUNTRY`, `GRADE`, `OPENING_AMT`, `RECEIVE_AMT`, `PAYMENT_AMT`, `OUTSTANDING_AMT`, `PHONE_NO`, `AGENT_CODE`) VALUES
('C00013', 'Holmes', 'London', 'London', 'UK', '2', '6000.00', '5000.00', '7000.00', '4000.00', 'BBBBBBB', 'A003'),
('C00001', 'Micheal', 'New York', 'New York', 'USA', '2', '3000.00', '5000.00', '2000.00', '6000.00', 'CCCCCCC', 'A008'),
('C00020', 'Albert', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '6000.00', '6000.00', 'BBBBSBB', 'A008'),
('C00025', 'Ravindran', 'Bangalore', 'Bangalore', 'India', '2', '5000.00', '7000.00', '4000.00', '8000.00', 'AVAVAVA', 'A011'),
('C00024', 'Cook', 'London', 'London', 'UK', '2', '4000.00', '9000.00', '7000.00', '6000.00', 'FSDDSDF', 'A006'),
('C00015', 'Stuart', 'London', 'London', 'UK', '1', '6000.00', '8000.00', '3000.00', '11000.00', 'GFSGERS', 'A003'),
('C00002', 'Bolt', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '9000.00', '3000.00', 'DDNRDRH', 'A008'),
('C00018', 'Fleming', 'Brisban', 'Brisban', 'Australia', '2', '7000.00', '7000.00', '9000.00', '5000.00', 'NHBGVFC', 'A005'),
('C00021', 'Jacks', 'Brisban', 'Brisban', 'Australia', '1', '7000.00', '7000.00', '7000.00', '7000.00', 'WERTGDF', 'A005'),
('C00019', 'Yearannaidu', 'Chennai', 'Chennai', 'India', '1', '8000.00', '7000.00', '7000.00', '8000.00', 'ZZZZBFV', 'A010'),
('C00005', 'Sasikant', 'Mumbai', 'Mumbai', 'India', '1', '7000.00', '11000.00', '7000.00', '11000.00', '147-25896312', 'A002'),
('C00007', 'Ramanathan', 'Chennai', 'Chennai', 'India', '1', '7000.00', '11000.00', '9000.00', '9000.00', 'GHRDWSD', 'A010'),
('C00022', 'Avinash', 'Mumbai', 'Mumbai', 'India', '2', '7000.00', '11000.00', '9000.00', '9000.00', '113-12345678', 'A002'),
('C00004', 'Winston', 'Brisban', 'Brisban', 'Australia', '1', '5000.00', '8000.00', '7000.00', '6000.00', 'AAAAAAA', 'A005'),
('C00023', 'Karl', 'London', 'London', 'UK', '0', '4000.00', '6000.00', '7000.00', '3000.00', 'AAAABAA', 'A006'),
('C00006', 'Shilton', 'Torento', 'Torento', 'Canada', '1', '10000.00', '7000.00', '6000.00', '11000.00', 'DDDDDDD', 'A004'),
('C00010', 'Charles', 'Hampshair', 'Hampshair', 'UK', '3', '6000.00', '4000.00', '5000.00', '5000.00', 'MMMMMMM', 'A009'),
('C00017', 'Srinivas', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '4000.00', '3000.00', '9000.00', 'AAAAAAB', 'A007'),
('C00012', 'Steven', 'San Jose', 'San Jose', 'USA', '1', '5000.00', '7000.00', '9000.00', '3000.00', 'KRFYGJK', 'A012'),
('C00008', 'Karolina', 'Torento', 'Torento', 'Canada', '1', '7000.00', '7000.00', '9000.00', '5000.00', 'HJKORED', 'A004'),
('C00003', 'Martin', 'Torento', 'Torento', 'Canada', '2', '8000.00', '7000.00', '7000.00', '8000.00', 'MJYURFD', 'A004'),
('C00009', 'Ramesh', 'Mumbai', 'Mumbai', 'India', '3', '8000.00', '7000.00', '3000.00', '12000.00', 'Phone No', 'A002'),
('C00014', 'Rangarappa', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'AAAATGF', 'A001'),
('C00016', 'Venkatpati', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'JRTVFDD', 'A007'),
('C00011', 'Sundariya', 'Chennai', 'Chennai', 'India', '3', '7000.00', '11000.00', '7000.00', '11000.00', 'PPHGRTS', 'A010');

SELECT * FROM customer;

CREATE TABLE `orders` (
`ORD_NUM` decimal(6,0) PRIMARY KEY NOT NULL,
`ORD_AMOUNT` decimal(12,2) NOT NULL,
`ADVANCE_AMOUNT` decimal(12,2) NOT NULL,
`ORD_DATE` date NOT NULL,
`CUST_CODE` varchar(6) NOT NULL,
`AGENT_CODE` varchar(6) NOT NULL,
`ORD_DESCRIPTION` varchar(60) NOT NULL
);

INSERT INTO `orders` (`ORD_NUM`, `ORD_AMOUNT`, `ADVANCE_AMOUNT`, `ORD_DATE`, `CUST_CODE`, `AGENT_CODE`, `ORD_DESCRIPTION`) VALUES
('200100', '1000.00', '600.00', '2008-01-08', 'C00015', 'A003', 'SOD\r'),
('200110', '3000.00', '500.00', '2008-04-15', 'C00019', 'A010', 'SOD\r'),
('200107', '4500.00', '900.00', '2008-08-30', 'C00007', 'A010', 'SOD\r'),
('200112', '2000.00', '400.00', '2008-05-30', 'C00016', 'A007', 'SOD\r'),
('200113', '4000.00', '600.00', '2008-06-10', 'C00022', 'A002', 'SOD\r'),
('200102', '2000.00', '300.00', '2008-05-25', 'C00012', 'A012', 'SOD\r'),
('200114', '3500.00', '2000.00', '2008-08-15', 'C00002', 'A008', 'SOD\r'),
('200122', '2500.00', '400.00', '2008-09-16', 'C00003', 'A004', 'SOD\r'),
('200118', '500.00', '100.00', '2008-07-20', 'C00023', 'A006', 'SOD\r'),
('200119', '4000.00', '700.00', '2008-09-16', 'C00007', 'A010', 'SOD\r'),
('200121', '1500.00', '600.00', '2008-09-23', 'C00008', 'A004', 'SOD\r'),
('200130', '2500.00', '400.00', '2008-07-30', 'C00025', 'A011', 'SOD\r'),
('200134', '4200.00', '1800.00', '2008-09-25', 'C00004', 'A005', 'SOD\r'),
('200115', '2000.00', '1200.00', '2008-02-08', 'C00013', 'A013', 'SOD\r'),
('200108', '4000.00', '600.00', '2008-02-15', 'C00008', 'A004', 'SOD\r'),
('200103', '1500.00', '700.00', '2008-05-15', 'C00021', 'A005', 'SOD\r'),
('200105', '2500.00', '500.00', '2008-07-18', 'C00025', 'A011', 'SOD\r'),
('200109', '3500.00', '800.00', '2008-07-30', 'C00011', 'A010', 'SOD\r'),
('200101', '3000.00', '1000.00', '2008-07-15', 'C00001', 'A008', 'SOD\r'),
('200111', '1000.00', '300.00', '2008-07-10', 'C00020', 'A008', 'SOD\r'),
('200104', '1500.00', '500.00', '2008-03-13', 'C00006', 'A004', 'SOD\r'),
('200106', '2500.00', '700.00', '2008-04-20', 'C00005', 'A002', 'SOD\r'),
('200125', '2000.00', '600.00', '2008-10-10', 'C00018', 'A005', 'SOD\r'),
('200117', '800.00', '200.00', '2008-10-20', 'C00014', 'A001', 'SOD\r'),
('200123', '500.00', '100.00', '2008-09-16', 'C00022', 'A002', 'SOD\r'),
('200120', '500.00', '100.00', '2008-07-20', 'C00009', 'A002', 'SOD\r'),
('200116', '500.00', '100.00', '2008-07-13', 'C00010', 'A009', 'SOD\r'),
('200124', '500.00', '100.00', '2008-06-20', 'C00017', 'A007', 'SOD\r'),
('200126', '500.00', '100.00', '2008-06-24', 'C00022', 'A002', 'SOD\r'),
('200129', '2500.00', '500.00', '2008-07-20', 'C00024', 'A006', 'SOD\r'),
('200127', '2500.00', '400.00', '2008-07-20', 'C00015', 'A003', 'SOD\r'),
('200128', '3500.00', '1500.00', '2008-07-20', 'C00009', 'A002', 'SOD\r'),
('200135', '2000.00', '800.00', '2008-09-16', 'C00007', 'A010', 'SOD\r'),
('200131', '900.00', '150.00', '2008-08-26', 'C00012', 'A012', 'SOD\r'),
('200133', '1200.00', '400.00', '2008-06-29', 'C00009', 'A002', 'SOD\r'),
('200132', '4000.00', '2000.00', '2008-08-15', 'C00013', 'A012', 'SOD\r');

-- Wprowadzenie
-- a. Napisz kwerendę, która zwróci wszystkich klientów z zamówieniami zrealizowanymi w dniu 2008-01-08
SELECT c.CUST_CODE, c.CUST_NAME, c.CUST_CITY, c.WORKING_AREA, c.CUST_COUNTRY 
FROM customer c 
JOIN orders o ON  o.CUST_CODE = c.CUST_CODE 
WHERE o.ORD_DATE = "2008-01-08";

-- b. Napisz kwerendę, która zwróci listę agentów oraz klientów do nich przypisanych, wraz z ich obszarem działalności.
SELECT a.AGENT_CODE, a.AGENT_NAME, a.WORKING_AREA AS agent_area, c.CUST_CODE, c.CUST_NAME, c.CUST_CITY, c.WORKING_AREA AS customer_area, c.CUST_COUNTRY
FROM agents a
JOIN customer c ON a.AGENT_CODE = c.AGENT_CODE;

-- INNER JOIN
-- a. Wyszukaj listę klientów, którzy podjęli współpracę z agentami, których prowizja jest powyżej 12%; kolumna z imieniem agenta powinna mieć nazwę „Salesman”
SELECT c.CUST_CODE, c.CUST_NAME, c.CUST_CITY, a.AGENT_CODE, a.AGENT_NAME AS Salesman , a.COMMISSION
FROM customer c
INNER JOIN agents a ON c.AGENT_CODE = a.AGENT_CODE WHERE a.COMMISSION >= "0.12";

-- b. Wyszukaj szczegóły dot. Zamówień: nr zamówienia, datę, kwotę, klienta (nazwa kolumny powinna być „Customer Name”) oraz agenta (w tym wypadku nazwa kolumny to „Salesman”), który pracuje dla tego klienta oraz jego prowizję od zamówienia
 
 SELECT o.ORD_NUM, o.ORD_DATE, o.ORD_AMOUNT, c.CUST_NAME AS Customer_name, a.AGENT_NAME AS Salesamn, a.COMMISSION
 FROM orders o
 INNER JOIN customer c ON o.CUST_CODE = c.CUST_CODE JOIN agents a ON a.AGENT_CODE = c.AGENT_CODE;
 
--  LEFT JOIN
-- a. Wyszukaj listę - posortowaną rosnąco wg kodu klienta (jego id) – klientów wraz z kodami i imionami przypisanych do nich agentów (nazwij kolumnę zawierającą imiona agentów jako „Salesman”), wyszukaj również ich obszar działalności

 SELECT c.CUST_CODE, c.CUST_NAME, a.AGENT_CODE, a.AGENT_NAME AS Salesman, a.WORKING_AREA AS agent_area
 FROM customer c
 LEFT JOIN agents a ON c.AGENT_CODE = a.AGENT_CODE ORDER BY c.CUST_CODE ASC;
 
--  RIGHT JOIN
-- a. Wyszukaj listę agentów pracujących dla jednego bądź więcej klientów lub takich, którzy jeszcze nie podjęli współpracy z żadnym klientem, posortuj listę rosnąco wg kolumny kodu agenta; nazwij kolumnę zawierającą nazwy agentów jako „Salesman”, wyszukaj również ich obszar działalności

 SELECT a.AGENT_CODE, a.AGENT_NAME AS Salesman, a.WORKING_AREA AS area_agent, c.CUST_CODE, c.CUST_NAME
 FROM agents a
 RIGHT JOIN customer c ON a.AGENT_CODE = c.AGENT_CODE 
 ORDER BY a.AGENT_CODE ASC;
 
--  CROSS JOIN
-- a. Wyszukaj iloczyn kartezjański agentów oraz klientów, w taki sposób, że każdy agent będzie widoczny dla wszystkich klientów i vice versa.
SELECT  a.AGENT_CODE, a.AGENT_NAME AS Salesman, a.WORKING_AREA AS area_agent, c.CUST_CODE, c.CUST_NAME, c.WORKING_AREA AS area_customer
FROM agents a
CROSS JOIN customer c ORDER BY a.AGENT_CODE;

-- b. Wyszukaj iloczyn kartezjański agentów oraz klientów, w taki sposób, że każdy agent będzie widoczny dla wszystkich klientów i vice versa, ale tylko jeżeli agent jest z tego samego obszaru co klient.
SELECT  a.AGENT_CODE, a.AGENT_NAME AS Salesman, a.WORKING_AREA AS area_agent, c.CUST_CODE, c.CUST_NAME, c.WORKING_AREA AS area_customer
FROM agents a
CROSS JOIN customer c WHERE a.WORKING_AREA = c.WORKING_AREA;
-- c. Wyszukaj iloczyn kartezjański agentów oraz klientów, w taki sposób, że każdy agent będzie widoczny dla wszystkich klientów i vice versa, ale tylko jeżeli agent jest z innego obszaru niż klient, a klient posiada swoją własną ocenę (‘grade’)
SELECT  a.AGENT_CODE, a.AGENT_NAME AS Salesman, a.WORKING_AREA AS area_agent, c.CUST_CODE, c.CUST_NAME, c.WORKING_AREA AS area_customer, c.GRADE
FROM agents a
CROSS JOIN customer c WHERE a.WORKING_AREA <> c.WORKING_AREA AND c.GRADE IS NOT NULL;

 
-- UNION
-- a. Wyszukaj wszystkich agentów (ich kod – nazwij kolumne „ID” - oraz imię agenta); przypisz im wartość ‘Salesman’ w kolumnie o nazwie „Rodzaj”, oraz klientów – ich ID i nazwa (wartość ‘Customer’ w kolumnie „Rodzaj”) zlokalizowanych w Londynie
SELECT a.AGENT_CODE AS ID, a.AGENT_NAME AS Name, "Salesman" AS Rodzaj
FROM agents a
UNION
SELECT c.CUST_CODE AS ID, c.CUST_NAME AS Name , "Customer" AS Rodzaj
FROM customer c;


-- b. Napisz kwerendę, która zwróci raport pokazujący, który agent przyjął największe i najmniejsze zamówienia na każdy dzień
SELECT o.ORD_NUM, o.ORD_AMOUNT, o.ORD_DATE, "MAX" AS Typ, a.AGENT_CODE, a.AGENT_NAME AS Salesman
FROM orders o
JOIN agents a ON o.AGENT_CODE = a.AGENT_CODE
WHERE o.ORD_AMOUNT = (
	SELECT MAX(ORD_AMOUNT) 
    FROM orders
    WHERE ORD_DATE = o.ORD_DATE
)

UNION

SELECT o.ORD_NUM, o.ORD_AMOUNT, o.ORD_DATE, "MIN" AS Typ, a.AGENT_CODE, a.AGENT_NAME AS Salesman
FROM orders o
JOIN agents a ON o.AGENT_CODE = a.AGENT_CODE
WHERE o.ORD_AMOUNT = (
	SELECT MIN(ORD_AMOUNT) 
    FROM orders
    WHERE ORD_DATE = o.ORD_DATE
)
ORDER BY ORD_DATE, Typ DESC;

-- WITH
-- a. Wyszukaj agenta w Londynie z prowizją powyżej 14% - nazwij widok „londonstaff”
WITH londonstaff AS (
	SELECT a.AGENT_CODE, a.AGENT_NAME AS Salesman, a.WORKING_AREA, a.COMMISSION
    FROM agents a
    WHERE a.WORKING_AREA = "London" AND a.COMMISSION >= 0.14
)
 SELECT *
FROM londonstaff;

-- b. Utwórz widok „gradecount”, aby uzyskać liczbę klientów dla każdej oceny (‘grade’)
WITH gradecount AS (
	SELECT GRADE, COUNT(*) AS liczba_klientow
    FROM customer
    GROUP BY GRADE
)
SELECT * FROM gradecount;

-- c. Utwórz widok (o nazwie „total_per_dzien”) do śledzenia liczby klientów, średniej kwoty zamówień oraz ogólnej sumy zamówień na każdy dzień
WITH total_per_dzien AS (
	SELECT 
    ORD_DATE, 
    COUNT(DISTINCT CUST_CODE) AS liczba_klientow,
    AVG(ORD_AMOUNT) AS srednia_kwota_zamowien,
    SUM(ORD_AMOUNT) AS suma_zamowien
    FROM orders
    GROUP BY ORD_DATE
)
SELECT * FROM total_per_dzien;
