--DDL AGAIN

CREATE DATABASE School

USE School

CREATE TABLE Student(
    StudentNo int NOT NULL PRIMARY KEY,
    StudentName VARCHAR(15),
    StudentSurname VARCHAR(20),
    StudentAddress VARCHAR(50),
    StudentClass VARCHAR(2)
)

-- Add New Cloumn
ALTER TABLE Student Add StudentCity VARCHAR(20) DEFAULT 'İstanbul'

SELECT * FROM Student

-- Limiting the data to be placed in columns.
ALTER TABLE Student ADD
StudentExam1 TINYINT CHECK (StudentExam1>0),
StudentExam2 INT CONSTRAINT chec2 CHECK (StudentExam2 >=0 and StudentExam2<=100)

ALTER TABLE Student ADD
StudentClub VARCHAR(50) CONSTRAINT chk CHECK (StudentClub in ('health','library','environmental','trafic') )

-- Update Cloumn
ALTER TABLE Student ALTER COLUMN StudentAddress VARCHAR(100)

/* Cloumn Delete
ALTER TABLE Student DROP COLUMN "Cloumn Name" */

TRUNCATE TABLE Student --Delete all data in table.

--DML AGAIN

INSERT INTO Student (StudentNo, StudentName, StudentSurname, StudentAddress, StudentClass, StudentCity, StudentExam1, StudentExam2, StudentClub)
VALUES
(1, 'Ahmet', 'Yılmaz', 'Ataşehir Mah. No:12', '10', 'İstanbul', 85, 90, 'library'),
(2, 'Mehmet', 'Kaya', 'Kadıköy Mah. No:34', '11', 'Ankara', 75, 82, 'health'),
(3, 'Ayşe', 'Demir', 'Beşiktaş Mah. No:5', '12', 'İzmir', 95, 98, 'environmental'),
(4, 'Fatma', 'Çelik', 'Üsküdar Mah. No:67', '9', 'Antalya', 88, 91, 'trafic'),
(5, 'Zeynep', 'Aydın', 'Maltepe Mah. No:23', '10', 'Bursa', 77, 84, 'health'),
(6, 'Ali', 'Koç', 'Bakırköy Mah. No:44', '11', 'İstanbul', 80, 86, 'library'),
(7, 'Veli', 'Şahin', 'Sarıyer Mah. No:9', '12', 'Adana', 65, 70, 'environmental'),
(8, 'Elif', 'Yıldız', 'Pendik Mah. No:31', '9', 'Gaziantep', 90, 93, 'trafic'),
(9, 'Merve', 'Kurt', 'Tuzla Mah. No:18', '10', 'Kocaeli', 85, 88, 'library'),
(10, 'Hasan', 'Bozkurt', 'Şişli Mah. No:28', '11', 'Samsun', 92, 96, 'health'),
(11, 'Cem', 'Arslan', 'Avcılar Mah. No:2', '12', 'Trabzon', 78, 83, 'trafic'),
(12, 'Seda', 'Ersoy', 'Ümraniye Mah. No:55', '9', 'İzmir', 89, 91, 'environmental'),
(13, 'Yunus', 'Öztürk', 'Beylikdüzü Mah. No:39', '10', 'İstanbul', 93, 95, 'health'),
(14, 'Gamze', 'Aksoy', 'Kartal Mah. No:11', '11', 'Eskişehir', 87, 90, 'library'),
(15, 'Burak', 'Dinç', 'Bahçelievler Mah. No:77', '12', 'Konya', 81, 85, 'environmental');


SELECT StudentName, StudentSurname FROM Student

CREATE TABLE Teacher(
    TeacherNo INT NOT NULL PRIMARY KEY,
    TeacherName VARCHAR(15),
    TeacherSurname VARCHAR(20),
    TeacherLesson VARCHAR (15),
    TeacherClass VARCHAR (2)
)

SELECT * FROM Teacher

INSERT INTO Teacher (TeacherNo, TeacherName, TeacherSurname, TeacherLesson, TeacherClass)
VALUES
(1, 'Ahmet', 'Korkmaz', 'Mathematics', '10'),
(2, 'Mehmet', 'Aslan', 'Physics', '11'),
(3, 'Ayşe', 'Çetin', 'Chemistry', '12'),
(4, 'Fatma', 'Acar', 'Biology', '9'),
(5, 'Zeynep', 'Demir', 'English', '10'),
(6, 'Ali', 'Yıldız', 'History', '11'),
(7, 'Veli', 'Koç', 'Geography', '12'),
(8, 'Elif', 'Şahin', 'Turkish Language', '9'),
(9, 'Merve', 'Güneş', 'Mathematics', '10'),
(10, 'Hasan', 'Boz', 'Physics', '11'),
(11, 'Cem', 'Kaplan', 'Chemistry', '12'),
(12, 'Seda', 'Özdemir', 'English', '9'),
(13, 'Yunus', 'Ersoy', 'History', '10'),
(14, 'Gamze', 'Aydın', 'Turkish Language', '11'),
(15, 'Burak', 'Polat', 'Physical Education', '12');

ALTER TABLE Teacher
ALTER COLUMN TeacherLesson VARCHAR(20);

SELECT Student.StudentClass,Teacher.TeacherClass FROM Student, Teacher

SELECT * FROM Student WHERE StudentClass >10

SELECT * FROM Student Where StudentExam1<50 or StudentExam2>90 or StudentClass=11

SELECT * FROM Teacher Where TeacherLesson like '%language%'

-- Update Cloumn Date 
UPDATE Teacher set TeacherName='Elif', TeacherClass=9 WHERE TeacherNo=14

