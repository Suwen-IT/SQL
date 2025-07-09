USE BookCase

SELECT * FROM Book
--Like Operation '%a%' = in 'a%'= start with a '%a' end with a '[ab]%' star with a or b
SELECT * FROM Book WHERE BookName like '[md]%'
--Between them
SELECT* FROM Book WHERE BookAuthor like '[a-g]%'
-- 3. latter is;
SELECT * FROM Book WHERE BookName like '__a%'
--Not between them ^ - negative
SELECT * FROM Book WHERE BookName like '[^a-j]%'

--Arithmetic Operators
SELECT 20+4 as 'Plus', 20-4 'Minus', 20/4 'Diveded', 20*4 'Multipy'

SELECT BookName,BookPrice,BookPrice+3 as 'New Price' FROM Book
--Merging Cloumns
SELECT BookName + ' - ' + BookAuthor as 'Book Case' FROM Book
--Fetch a certain number of data characters.
SELECT SUBSTRING(BookName,1,5)FROM Book

SELECT left(BookAuthor,8) FROM Book
SELECT right(BookAuthor,4) FROM Book

--Latter Size
SELECT UPPER(BookName) as 'BIG LATTER', LOWER(BookName) as 'small later'FROM Book

SELECT BookAuthor, LEN(BookAuthor) as 'Number of Characters' FROM Book WHERE LEN(BookAuthor)>15
--It does not perform an update, it only performs a query.
SELECT BookName,REPLACE(BookAuthor, 'Fyodor Dostoyevski','Dostoyevski') FROM Book

SELECT REVERSE(BookName)FROM Book

--Numerical Functions

SELECT ABS(BookPrice) as 'Book Price' FROM Book

SELECT CEILING(BookPrice) as 'Book Prices', BookPrice,FLOOR(BookPrice) as 'Book Price 2', BookName FROM Book

SELECT BookName,BookPrice,ROUND(BookPrice,1) FROM Book

SELECT SUM(BookPrice) as 'Total' FROM Book

SELECT SUM(BookPrice) as 'Total' FROM Book WHERE BookPrice>15

SELECT BookName, BookPrice FROM Book WHERE BookPrice>15

SELECT SUM(BookPrice) as 'Total' FROM Book WHERE BookDate Between '2016-01-01' and '2016-12-30'

SELECT BookName,BookPrice FROM Book Where BookDate Between '2016-01-01' and '2016-12-30'

SELECT AVG(BookPrice)as 'Avarage' FROM Book

SELECT MAX(BookPrice) FROM Book
SELECT MIN(BookPrice) FROM Book

SELECT COUNT(BookName) FROM Book

-- Date Functions

SELECT DATEPART(YEAR,GETDATE()) as 'Year',
DATEPART(MONTH,GETDATE())as 'Month',
DATEPART(DAY,GETDATE()) as 'Day',
DATEPART(Week,GETDATE()) as 'Week',
DATEPART(QUARTER,GETDATE()) as 'Quarter'

SELECT DATEPART(QUARTER,'1997-09-01')

SELECT * FROM Book WHERE DATEPART(YEAR,BookDate)=2016

SELECT DATEDIFF(Year,'1923-10-29','2025-10-29') as 'Year Period',
DATEDIFF(MONTH,'2025-01-05','2025-07-08') as 'Month Period',
DATEDIFF(DAY,'1997-09-01','2001-12-26') as 'Day Period'

SELECT DATEDIFF(YEAR,'1919-05-19',GETDATE())

SELECT DATEADD(DAY,10,GETDATE())