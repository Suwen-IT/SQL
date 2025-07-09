USE BookCase

-- INTERSECT: Returns the common records between two queries.
-- EXCEPT: Returns the records that exist in the first query but not in the second.

SELECT BookName FROM Book
INTERSECT
SELECT BookName2 FROM Book2

SELECT BookName FROM Book
EXCEPT
SELECT BookName2 FROM Book2

SELECT BookName2 FROM Book2
EXCEPT
SELECT BookName FROM Book

-- UNION: combines distinct results
-- UNION ALL: combines all results including duplicates

SELECT BookName FROM Book
UNION --All
SELECT BookName2 FROM Book2

-- Subqueries are queries nested inside another query to provide dynamic filtering or values.

SELECT *FROM Book WHERE Tax =(select Tax FROM Book WHERE BookName='Palto')

SELECT * FROM Book WHERE BookPrice = (select BookPrice FROM Book WHERE BookName='Insan Neyle Yasar')

SELECT * FROM Book2

SELECT * FROM Book WHERE BookPrice =(select BookPoint FROM Book2 WHERE BookColor='Krem')

SELECT * FROM Book WHERE BookPrice=(select BookPrint FROM Book3 WHERE BookColor3='Gri')

--Transaction

BEGIN TRANSACTION 
UPDATE Book SET BookPage=100
UPDATE Book SET BookPrice=8
SELECT * FROM Book
ROLLBACK
SELECT * FROM Book
