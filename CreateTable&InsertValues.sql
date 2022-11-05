CREATE DATABASE NewDatabase

CREATE TABLE Users
(
Id INT IDENTITY (1,1)  NOT NULL,
Name NVARCHAR(100) NOT NULL,
BirthDate DATE NOT NULL,
Email NVARCHAR(100),
Password NVARCHAR(100)
)

DECLARE @DifferentDate AS DATE='1990-01-01'

INSERT INTO Users(Name, BirthDate)
VALUES('James',DATEADD(month, 0,@DifferentDate)),
('Robert',DATEADD(month, 1,@DifferentDate)),
('John',DATEADD(month, 2,@DifferentDate)),
('Michael',DATEADD(month, 3,@DifferentDate)),
('David',DATEADD(month, 4,@DifferentDate)),
('William',DATEADD(month, 5,@DifferentDate)),
('Richard',DATEADD(month, 6,@DifferentDate)),
('Joseph',DATEADD(month, 7,@DifferentDate)),
('Thomas',DATEADD(month, 8,@DifferentDate)),

('Charles',DATEADD(month, 9,@DifferentDate)),
('Elijah',DATEADD(month, 10,@DifferentDate)),
('Randy',DATEADD(month, 11,@DifferentDate)),
('Mason',DATEADD(month, 12,@DifferentDate)),
('James',DATEADD(month, 13,@DifferentDate)),
('Philip',DATEADD(month, 14,@DifferentDate)),
('Wayne',DATEADD(month, 15,@DifferentDate)),
('James',DATEADD(month, 16,@DifferentDate)),
('Eugene',DATEADD(month, 17,@DifferentDate)),
('James',DATEADD(month, 18,@DifferentDate)),
('Philip',DATEADD(month, 19,@DifferentDate)),
('Russell',DATEADD(month, 20,@DifferentDate)),

('Louis',DATEADD(month, 21,@DifferentDate)),
('Billy',DATEADD(month, 22,@DifferentDate)),
('Jordan',DATEADD(month, 23,@DifferentDate)),
('Bryan',DATEADD(month, 24,@DifferentDate)),
('Logan',DATEADD(month, 25,@DifferentDate)),
('James',DATEADD(month, 26,@DifferentDate)),
('Albert',DATEADD(month, 27,@DifferentDate)),
('Bruce',DATEADD(month, 28,@DifferentDate)),
('Lawrence',DATEADD(month, 29,@DifferentDate)),
('Carl',DATEADD(month, 30,@DifferentDate)),
('Austin',DATEADD(month, 31,@DifferentDate))
