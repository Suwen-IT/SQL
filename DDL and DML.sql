CREATE DATABASE BookCase

USE BookCase

CREATE TABLE Book(
   BookNo int,
   BookName  VARCHAR(50),
   BookAuthor VARCHAR(30),
   BookPage SMALLINT,
   BookPrice INT,
   BookDate date,
   BookPabHouse VARCHAR(50)
)

SELECT * FROM Book

SELECT * FROM Book WHERE BookName='Son Ada'

SELECT * FROM Book WHERE BookPage<150

SELECT * From Book WHERE BookPabHouse='Star'

SELECT * From Book WHERE BookPabHouse='Star' and BookPrice>8

SELECT * From Book WHERE BookPage>200 or BookPrice>12 or BookAuthor='Reşat Nuri Gültekin'

SELECT * FROM Book WHERE BookPage in (200,300,220)

-- 'a%' returns books whose titles start with the letter 'a'
SELECT * FROM Book WHERE BookName like '%a%' and BookPage in (200, 300,75) and BookPrice>10



INSERT into Book VALUES (20, 'İnsan Ne İle Yaşar','Tolstoy',110,5,'2016-08-12', 'Mercury' )

-- Batch insert 
INSERT INTO Book (BookNo, BookName, BookAuthor, BookPage, BookPrice, BookDate, BookPabHouse)
VALUES
    (7,  'Kürk Mantolu Madonna','Sabahattin Ali', 160, 25,'2015-02-10','Yapı Kredi'),
    (8,  'Simyacı','Paulo Coelho',90, 30, '2013-09-15', 'Can Yayınları'),
    (9,  '1984','George Orwell',328, 35, '2014-06-08', 'İthaki'),
    (10, 'Hayvan Çiftliği','George Orwell', 152, 22, '2012-11-21', 'İthaki'),
    (11, 'Sefiller','Victor Hugo',450, 40,'2010-01-25', 'İnkılap'),
    (12, 'Tutunamayanlar','Oğuz Atay',724, 50, '2016-03-30', 'İletişim'),
    (13, 'Martı','Richard Bach',95,15,'2018-05-18', 'Epsilon'),
    (14, 'Beyaz Gemi','Cengiz Aytmatov',132, 20, '2019-07-12', 'Ötüken'),
    (15, 'Yabancı','Albert Camus',123, 27, '2011-10-10', 'Can Yayınları'),
    (16, 'Satranç', 'Stefan Zweig',89,  18, '2017-08-08', 'Türkiye İş Bankası'),
    (17, 'Küçük Prens','Antoine de Saint-Exupéry',96, 12, '2015-12-24', 'Maviçatı'),
    (18, 'Bir İdam Mahkumunun Son Günü','Victor Hugo', 130, 24, '2020-04-17', 'İnkılap'),
    (19, 'Suç ve Ceza','Fyodor Dostoyevski', 671, 45, '2014-03-01', 'Koridor');

--Do not insert data with missing values.
INSERT into Book (BookNo,BookName, BookPage,BookDate,BookPabHouse) VALUES 
(21,'Martin Eden', 387,'2016-09-01','Türkiye İş Bankası')

UPDATE Book set BookAuthor='Jack London', BookPrice=89 WHERE BookName='Martin Eden'

UPDATE Book set BookPrice=8 WHERE BookPrice='5'

DELETE from Book WHERE BookNo=20 

INSERT into Book VALUES(20,'Beyaz Geceler', 'Fyodor Dostoyevski',80,17,'2015-09-11', 'Moon' )

-- Different Values
SELECT distinct BookPabHouse FROM Book

INSERT INTO Book(BookNo,BookName,BookAuthor,BookPage,BookPrice,BookDate,BookPabHouse) VALUES
(22,'İnce Memed','Yaşar Kemal',430,45,'2011-03-15','Yapı Kredi'),
(23,'Simyacı','Paulo Coelho',192,28,'2016-05-10','Epsilon'),
(24,'Suç ve Ceza','Fyodor Dostoyevski',671,40,'2012-10-12','İş Bankası'),
(25,'Sefiller','Victor Hugo',468,38,'2010-06-20','Can Yayınları'),
(26,'Denemeler','Montaigne',310,30,'2013-01-05','İş Bankası'),
(27,'Saatleri Ayarlama Enstitüsü','Ahmet Hamdi Tanpınar',376,35,'2018-07-21','Dergah'),
(28,'Dönüşüm','Franz Kafka',96,15,'2015-11-11','İş Bankası'),
(29,'Yabancı','Albert Camus',123,26,'2014-04-09','Koridor'),
(30,'Küçük Prens','Antoine de Saint-Exupéry',96,14,'2017-12-25','Can Yayınları'),
(31,'Beyaz Diş','Jack London',240,18,'2019-03-13','İnkılap'),
(32,'Savaş ve Barış','Tolstoy',1225,70,'2009-01-01','Koridor'),
(33,'Bir İdam Mahkumunun Son Günü','Victor Hugo',132,20,'2016-10-10','Dergah'),
(34,'Satranç','Stefan Zweig',88,16,'2021-02-14','İletişim'),
(35,'Yalnızız','Peyami Safa',408,32,'2018-08-08','Ötüken'),
(36,'Sineklerin Tanrısı','William Golding',268,28,'2015-06-16','Can Yayınları'),
(37,'Çalıkuşu','Reşat Nuri Güntekin',410,36,'2011-09-09','İnkılap'),
(38,'Tutunamayanlar','Oğuz Atay',724,50,'2020-12-01','YKY'),
(39,'Kuyucaklı Yusuf','Sabahattin Ali',220,24,'2013-04-14','Yapı Kredi'),
(40,'Nutuk','Mustafa Kemal Atatürk',900,55,'2008-10-29','Türk Tarih Kurumu'),
(41,'İnsan Neyle Yaşar','Tolstoy',112,10,'2017-05-05','Can Yayınları');

SELECT * FROM Book order by BookNo

SELECT * FROM Book order by BookPrice desc

SELECT * FROM Book order by BookPabHouse, BookPrice asc

-- 'AS' keyword is used to assign a temporary alias to a table or column.
SELECT BookPrice as 'Book Price', BookName as 'Book Name' from Book

SELECT BookName,BookAuthor,BookPrice, BookPrice+2 as 'New Book Price' From Book

SELECT * From Book WHERE BookDate<'2016-01-01'

SELECT * From Book WHERE BookPrice>9 or BookPabHouse='Yapı Kredi' order by BookName

SELECT * FROM Book WHERE BookPabHouse in ('Ötüken', 'İş Bankası') order by BookPrice

SELECT * FROM Book WHERE BookPrice>10 and BookPrice<50 order by BookPrice

SELECT BookName AS [Book Name], BookPrice AS [Book Price]
FROM Book
WHERE BookPrice BETWEEN 10 and 40
ORDER BY BookPrice;

