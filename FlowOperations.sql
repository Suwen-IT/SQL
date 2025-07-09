-- FLOW OPERATORS

 --If-Else
USE BookCase

SELECT * FROM Book2

DECLARE @NumberOfBooks TINYINT
SELECT @NumberOfBooks =COUNT(BookName2) FROM Book2
if(@NumberOfBooks<=5)
BEGIN
PRINT 'Not Enough Books' + ' ' + CAST(@NumberOfBooks as VARCHAR(2))
END
ELSE
BEGIN
PRINT 'Enough Book' +' ' + CAST(@NumberOfBooks as VARCHAR(2))
END

-- If- Else If- Else
DECLARE @Number TINYINT
SELECT @Number=COUNT(BookType) FROM Book2 WHERE BookType='Türk Klasiği'
IF(@Number<=3)
BEGIN
PRINT 'Not Enough Books' + ' ' + CAST(@Number as VARCHAR(2))
END
ELSE IF (@Number>3 and @Number<=6)
BEGIN
PRINT 'Mid-Number Books' + ' ' + CAST(@Number as VARCHAR(2))
END
ELSE
BEGIN
PRINT 'Enough Books' + ' ' + CAST(@Number as VARCHAR(2))
END

--Case
SELECT * FROM Book3

SELECT BookColor3,BookDegree,'Statu'=
CASE BookDegree
when 'a' then 'Perfect'
when 'b' then 'Good'
when 'c' then 'So-So'
when 'd' then 'Bad'
else 'Not Known Value'
END
FROM Book3

--Another Example
SELECT BookColor3,BookPrint, 'Print Rate'=
CASE
WHEN BookPrint<=10 then 'Few Print'
WHEN BookPrint>10 and BookPrint<15 then 'Mid Print'
WHEN BookPrint>15 and BookPrint<20 then 'Enough Print'
WHEN BookPrint>=20 then 'Too Much Print'
END
FROM Book3

--While
DECLARE @Num INT
SET @Num=1
While(@Num<=10)
BEGIN
PRINT @Num
SET @Num=@Num+1
END

--Continue & Go
DECLARE @value INT
SET @value=1
WHILE (@value<=10)
BEGIN
PRINT CAST(@value as VARCHAR(10))+ ' Squre: ' + CAST(@value*@value as VARCHAR(15))
SET @value=@value+1
END

--Another Example
DECLARE @Numb INT
SET @Numb=1
WHILE (@Numb<=10)
BEGIN
IF(@Numb=7)
BEGIN
SET @Numb=@Numb+1
CONTINUE
END
PRINT CAST(@Numb as VARCHAR(10))+ ' Squre: ' + CAST(@Numb*@Numb as VARCHAR(15))
SET @Numb=@Numb+1
END

-- GoTo Example
DECLARE @counter TINYINT
SET @counter=1
git:
PRINT 'Counter: ' + CAST(@counter as VARCHAR(1))
SET @counter=@counter+1
WHILE (@counter<=5)
GOTO git


--Wait For
WAITFOR delay '00:00:15'
SELECT * FROM Book