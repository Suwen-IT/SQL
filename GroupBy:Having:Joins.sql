--Group By

Use BookCase

SELECT * FROM Book

SELECT BookAuthor, COUNT(BookName) as 'Number of Books' from Book GROUP BY BookAuthor

SELECT BookName, COUNT(BookName) as 'Stock' from Book GROUP BY BookName

SELECT BookPabHouse, COUNT(BookName) FROM Book GROUP BY BookPabHouse ORDER BY BookPabHouse 

SELECT BookPabHouse, SUM(BookPrice) as 'Total Price' FROM Book GROUP BY BookPabHouse 

SELECT BookPabHouse, AVG(BookPrice) as 'Total Price' FROM Book GROUP BY BookPabHouse 

SELECT BookPabHouse, MIN(BookPrice) as 'Minimum Price',
MAX(BookPrice) as 'Max Price' FROM Book 
GROUP BY BookPabHouse

SELECT BookPabHouse, COUNT(BookName) FROM Book
WHERE BookPrice>10 GROUP BY BookPabHouse

--Creating New Table For Operations Group By Activites 

CREATE TABLE Persons(
    PersonNo INT NOT NULL PRIMARY KEY,
    Name VARCHAR(20),
    Surname VARCHAR(30),
    Job VARCHAR(30),
    City VARCHAR(15),
    Wage INT
)

SELECT * From Persons

INSERT INTO Persons (PersonNo, Name, Surname, Job, City, Wage) VALUES
(1, 'Ali', 'Yılmaz', 'Engineer', 'Istanbul', 12000),
(2, 'Ayşe', 'Demir', 'Teacher', 'Ankara', 9500),
(3, 'Mehmet', 'Kara', 'Doctor', 'Izmir', 18000),
(4, 'Zeynep', 'Aydın', 'Lawyer', 'Bursa', 16000),
(5, 'Can', 'Çelik', 'Nurse', 'Antalya', 8500),
(6, 'Elif', 'Koç', 'Engineer', 'Adana', 11000),
(7, 'Emre', 'Şahin', 'Software Dev', 'Istanbul', 14000),
(8, 'Deniz', 'Arslan', 'Teacher', 'Eskişehir', 9100),
(9, 'Mert', 'Yalçın', 'Architect', 'Kayseri', 13000),
(10, 'Ece', 'Polat', 'Pharmacist', 'Konya', 12500),
(11, 'Berk', 'Doğan', 'Civil Eng', 'Samsun', 11500),
(12, 'Selin', 'Kurt', 'Graphic Des', 'Istanbul', 9000),
(13, 'Okan', 'Ersoy', 'Pilot', 'Ankara', 20000),
(14, 'Derya', 'Bozkurt', 'Dentist', 'Izmir', 17000),
(15, 'Onur', 'Şimşek', 'Chef', 'Gaziantep', 9200),
(16, 'Seda', 'Eren', 'HR Manager', 'Istanbul', 13500),
(17, 'Burak', 'Aksoy', 'Data Analyst', 'Antalya', 12800),
(18, 'Naz', 'Türkmen', 'Psychologist', 'Mersin', 14200),
(19, 'Kerem', 'Sezer', 'Accountant', 'Denizli', 9700),
(20, 'Buse', 'Karaaslan', 'Teacher', 'Trabzon', 8900),
(21, 'Yusuf', 'Öztürk', 'Technician', 'Malatya', 8700),
(22, 'Gizem', 'Taş', 'Lawyer', 'Istanbul', 15800),
(23, 'Serkan', 'Çınar', 'Doctor', 'Ankara', 18500),
(24, 'Aylin', 'Baran', 'Nurse', 'Bursa', 8800),
(25, 'Tolga', 'Ergin', 'Engineer', 'Kocaeli', 12500),
(26, 'İpek', 'Güneş', 'HR Manager', 'Eskişehir', 13200),
(27, 'Volkan', 'Kılıç', 'Software Dev', 'Istanbul', 14500),
(28, 'Nisa', 'Acar', 'Dentist', 'Antalya', 16800),
(29, 'Hakan', 'Yiğit', 'Pilot', 'Kayseri', 19800),
(30, 'Melis', 'Çetinkaya', 'Psychologist', 'Konya', 13900),
(31, 'Barış', 'Uçar', 'Technician', 'Samsun', 8600),
(32, 'Esra', 'Soylu', 'Architect', 'Adana', 12900),
(33, 'Fatih', 'Durmaz', 'Chef', 'Gaziantep', 9400),
(34, 'Aslı', 'Bayrak', 'Data Analyst', 'Ankara', 13000),
(35, 'Kaan', 'Altun', 'Graphic Des', 'Izmir', 9500),
(36, 'Sibel', 'Sarı', 'Pharmacist', 'Istanbul', 12300),
(37, 'Arda', 'Yavuz', 'Engineer', 'Bursa', 11700),
(38, 'Merve', 'Koşar', 'Accountant', 'Mersin', 10100),
(39, 'Tunç', 'Yüce', 'Civil Eng', 'Trabzon', 11300),
(40, 'Ceren', 'İnce', 'Software Dev', 'Kocaeli', 14600);

SELECT Job, COUNT(Name) as 'Number of Personnel' FROM Persons GROUP By Job ORDER By COUNT(Name)

SELECT City,Count(Name) as 'Number' FROM Persons GROUP By City ORDER BY City

SELECT Job, COUNT(Name)as 'Personnels',
Sum(Wage) 'Total Wage ' FROM Persons GROUP BY Job

SELECT Job, COUNT(Name) as 'Number of Personnel',
SUM(Wage) 'Total Wage',
AVG(Wage) 'Average'
FROM Persons GROUP BY Job

SELECT Job,MAX(Wage)AS 'Max Wage',MIN(Wage) AS 'MIN Wage' FROM Persons GROUP BY Job

-- Having
SELECT * FROM Book

ALTER TABLE Book
ADD Tax TINYINT;

-- RAND(CHECKSUM(NEWID())) → Generates a different random number for each row
-- * 10 + 1 → Scales the value to the range 1–10 (e.g., between 1.0 and 10.999...)
-- CAST(... AS TINYINT) → Truncates the decimal part and converts to TINYINT
-- WHERE Tax IS NULL → Updates only rows where Tax is currently NULL
UPDATE Book
SET Tax = CAST(RAND(CHECKSUM(NEWID())) * 10 + 1 AS TINYINT)
WHERE Tax IS NULL;


SELECT BookPabHouse, COUNT(BookName) AS 'Number of Books',
SUM(BookPrice) as 'Take',
SUM(Tax)as 'Give',
(SUM(BookPrice)-SUM(Tax)) as 'Net Balance'
FROM Book GROUP BY BookPabHouse HAVING (SUM(BookPrice)-SUM(Tax)>15)


SELECT BookPabHouse, COUNT(BookName) AS 'Number of Books',
SUM(BookPrice) as 'Take',
SUM(Tax)as 'Give',
(SUM(BookPrice)-SUM(Tax)) as 'Net Balance'
FROM Book GROUP BY BookPabHouse HAVING COUNT(BookName)>=4


--JOIN OPERATIONS


--WHERE
SELECT * FROM Book

Create TABLE Book2(
    BookName VARCHAR(20),
    BookType VARCHAR(15),
    BookSummary Text,
    BookColor VARCHAR(15)
)

SELECT * FROM Book2

INSERT INTO Book2 (BookName, BookType, BookSummary, BookColor) VALUES
('Çalıkuşu', 'Türk Klasiği', 'Feride adlı genç bir öğretmenin Anadolu’daki yaşam mücadelesi.', 'Açık Kahverengi'),
('Son Ada', 'Modern Türk', 'Diktatörlük altında bir adada özgürlüğün ve doğanın çöküşü.', 'Mavi'),
('Siyah Lale', 'Tarihi Roman', '17. yüzyıl Hollanda’sında geçen adalet ve rekabet hikayesi.', 'Siyah'),
('Kürk Mantolu Madonna', 'Psikolojik Roman', 'İçine kapanık bir adamın sıra dışı aşk hikayesi.', 'Krem'),
('1984', 'Distopya', 'Baskıcı bir rejim altında bireyselliğin yok oluşu.', 'Gri'),
('Hayvan Çiftliği', 'Siyasi Alegori', 'Hayvanlar üzerinden totaliter rejim eleştirisi.', 'Beyaz'),
('Sefiller', 'Klasik Roman', 'Toplumsal eşitsizliklere karşı verilen insani bir mücadele.', 'Lacivert'),
('Tutunamayanlar', 'Modern Türk', 'Topluma uyum sağlayamayan bireylerin içsel çatışmaları.', 'Siyah'),
('Satranç', 'Psikolojik Kurgu', 'Bir savaş esirinin satrançla delilik arasındaki yolculuğu.', 'Gri'),
('İnce Memed', 'Epik Roman', 'Zalim ağalara karşı mücadele veren bir halk kahramanının destanı.', 'Toprak');

ALTER TABLE Book2
ALTER COLUMN BookType VARCHAR(30);

EXEC sp_rename 'Book2.BookName', 'BookName2', 'COLUMN';

CREATE TABLE Book3(
    BookColor VARCHAR(15),
    BookPrint TINYINT
)

EXEC sp_rename 'Book3.BookColor', 'BookColor3', 'COLUMN';

SELECT * FROM Book3

INSERT INTO Book3 (BookColor, BookPrint) VALUES
('Kırmızı', 1),
('Mavi', 2),
('Yeşil', 1),
('Sarı', 3),
('Siyah', 2),
('Beyaz', 1),
('Kahverengi', 4),
('Mor', 2),
('Turuncu', 3),
('Gri', 1);


SELECT BookName, BookAuthor, BookType FROM Book, Book2 WHERE Book.BookName=Book2.BookName2 

SELECT BookName,BookColor FROM Book c1, Book2 c2 WHERE c1.BookName=c2.BookName2 

SELECT BookName,BookType,BookColor FROM Book c1, Book2 c2, Book3 c3 WHERE
c1.BookName=c2.BookName2 and c2.BookColor=c3.BookColor3

-- INNER JOIN

SELECT BookName,BookColor, BookType FROM Book b1 inner JOIN Book2 b2
on b1.BookName=b2.BookName2 

SELECT SUM(BookPrice) as 'Total', BookType FROM Book b1 inner JOIN
Book2 b2 ON b1.BookName=b2.BookName2 GROUP BY BookType ORDER BY BookType

SELECT BookName, BookType, BookColor from Book b1 inner join book2 b2 ON
b1.BookName=b2.BookName2 inner join Book3 b3 ON
b2.BookColor=b3.BookColor3 

SELECT BookType, SUM(BookPrice) as 'Total' from Book b1 inner join book2 b2 ON
b1.BookName=b2.BookName2 inner join Book3 b3 ON
b2.BookColor=b3.BookColor3 GROUP BY BookType
ORDER BY BookType

--LEFT/RIGHT OUTER JOIN

 SELECT BookName,BookColor From Book b1 INNER JOIN Book2 b2 ON
 b1.BookName=b2.BookName2

 SELECT BookName,BookColor FROM Book b1 LEFT OUTER JOIN Book2 b2 ON
 b1.BookName=b2.BookName2

 SELECT BookName,BookColor FROM Book b1 RIGHT OUTER JOIN Book2 b2 ON
 b1.BookName=b2.BookName2 

--FULL/CROSS JOIN

SELECT BookName,BookColor From Book b1 FULL OUTER JOIN Book2 b2 ON
b1.BookName=b2.BookName2

SELECT BookName,BookColor From Book CROSS JOIN Book2

