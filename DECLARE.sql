USE BookCase

--In SQL, the DECLARE statement is used to define (declare) a variable

DECLARE @city VARCHAR(15)
SET @city ='London'
PRINT @city --If you use 'SET'operation your value will come in table.

--ARITHMETIC OPERATINS
DECLARE @numer1 INT,@number2 INT, 
@total INT, @subtract INT, @divide INT, @multiply INT

SET @numer1=40
SET @number2=8

SET @total=@numer1+@number2
SET @subtract=@numer1-@number2
SET @divide=@numer1/@number2
SET @multiply=@numer1*@number2

PRINT 'Total' +' '+ cast(@total as VARCHAR(2))
PRINT 'Subtract' +' '+ cast(@subtract as VARCHAR(2))
PRINT 'Divide' +' '+ cast(@divide as VARCHAR(2))
PRINT 'Multiply' +' '+ cast(@multiply as VARCHAR(3))

--Square, Cube and Squre Root
DECLARE @number FLOAT;
SET @number = 16;

DECLARE @square FLOAT;
DECLARE @cube FLOAT;
DECLARE @squareRoot FLOAT;

SET @square = @number * @number;
SET @cube = @number * @number * @number;
SET @squareRoot = SQRT(@number);

SELECT 
    @number AS OriginalNumber,
    @square AS Square,
    @cube AS Cube,
    @squareRoot AS SquareRoot;



-- Declare  Virtual Table 

DECLARE @students table(
    StudentNo VARCHAR(3),
    StudentName varchar(20),
    StudentSurname varchar(30),
    StudentClub varchar(30)
);

INSERT into @students(StudentNo,StudentName,StudentSurname,StudentClub) 
VALUES(97,'Yağmur','Aslan','Art')

SELECT * FROM @students

-- Output Command
DECLARE @new table(
    color VARCHAR(10),
    Bprint TINYINT)

    INSERT INTO Book3
    OUTPUT inserted.BookColor3,inserted.BookPrint
    INTO @new
    VALUES ('blue',21)

    SELECT * FROM @new


DECLARE @removed TABLE(
    color VARCHAR(10),
    Bprint TINYINT
)

DELETE FROM Book3
OUTPUT deleted.BookColor3, deleted.BookPrint
INTO @removed
WHERE BookColor3='gri'
SELECT * FROM @removed

