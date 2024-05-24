create database LabraryD8 -- se their name bookstore
use LabraryD8


create table authors( -- To create table their name authors 
authorid int primary key, -- To create a colummn named authorid 
firstname varchar(50), -- To create a colummn named last_name
lastname varchar(50) -- To create a colummn named last_name
);


create table Books( -- To create table their name books 
BookID int primary key, -- To create a colummn named bookid 
title varchar(50), -- To create a colummn named title
authorid int , --varchar(50), -- To create a colummn named authorid
--categoryid int , -- varchar(50) -- To create a colummn named categoryid 
foreign key (authorid) references authors (authorid),
--foreign key (categoryid) references categories (categoryid)
--price decimal(10,2) -- To create a colummn named price 
);


-- Créer la table Loans
CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    BookID INT,
    LoanDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);




insert into authors(authorid,firstname,lastname)
values(1,'saidA','laouedjA'),
(2,'saidB','laouedjB'),
(3,'saidC','laouedjC');

select *
from authors


insert into Books(Bookid,title,authorid)
values(1,'TitleA','1'),
(2,'TitleB','2'),
(3,'TitleC','3');

select *
from books


-- Insérer des emprunts
INSERT INTO Loans (LoanID, BookID, LoanDate, ReturnDate)
VALUES 
(1, 1, '2024-05-01', '2024-05-15'),
(2, 2, '2024-05-02', NULL),
(3, 3, '2024-05-03', '2024-05-17');


select *
from Loans

-- authorid,firstname,lastname
update authors -- To upddate our table employee 
set firstname = 'Eric' -- To change the column department "marketing" by "technique"
--set lastname = Blair  -- To change the column department "marketing" by "technique"
where authorid = 1 -- for all the columns = 1²

-- authorid,firstname,lastname
update authors -- To upddate our table employee 
-- set firstname = 'Eric' -- To change the column department "marketing" by "technique"
set lastname = 'Blair'  -- To change the column department "marketing" by "technique"
where authorid = 1 -- for all the columns = 1²






DELETE FROM Loans 
WHERE LoanID = 1

select *
from Loans


--Displaying all employees with their salaries:
SELECT
   A.firstname+''+A.lastname as authorsName,  -- to join first name with last name in one column renamed authorname
   B.title as BooksTilte   -- to join first name with last name in one column renamed authorname

FROM Books B  -- to relate between same columns from different table 
JOIN authors A ON B.authorid = A.authorid



SELECT * -- To display columns 
FROM Loans L  -- to relate between same columns from different table 
WHERE L.ReturnDate is null
