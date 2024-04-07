-- SQLite
-- projections
select * from Authors


-- Insert
INSERT INTO Authors
VALUES(NULL, 'daman', 'F', 'ghorahi', 'daman@gmail.com', '2005/2/23');


--Create publishers table
CREATE TABLE publishers (
    ID integer PRIMARY KEY,
    Name nvarchar(255),
    Address varchar(455),
    phone varchar(10),
    RegistrationNo varchar(255)
    
);


CREATE TABLE AuthorsDetails (
    ID integer PRIMARY KEY,
    Education nvarchar(255),
    publication nvarchar(100),
    organization varchar(101),
    AuthorId integer,
    FOREIGN KEY (AuthorId) REFERENCES Authors(Id)
   );

--Delete table
drop table AuthorsDetails
--Relations one to one, one to many, many to many

-- Constraints
ALTER TABLE Orders
ADD FOREIGN KEY (AuthorsDetailsId) REFERENCES AuthorsDetails(Id);

INSERT INTO AuthorsDetails
VALUES(NULL, 'Masters in data science ', 'sarada publication', 'JV group', '2');

select * from AuthorsDetails

--classwork 1:
-- Get authors details like Name, Contact Details and the organization he/she is accociated with
SELECT a.Name, a.Email, ad.organization
FROM Authors a
INNER JOIN AuthorsDetails ad ON a.ID = ad.AuthorId

--classwork
--create another Book (Id, Title, Edition, Price, ISBN, Published)
--Relate Books and Authors (One-To-Many), FK on many side (Authors)
--insert some row in Books and Authors table




-- Day 4

CREATE TABLE Book (
    ID integer PRIMARY KEY,
    Title text not null,
    Edition text not null,
    price real null,
    ISBN text null,
    Published text not null 
);

INSERT INTO Book
VALUES(NULL, 'machine learning', '1111', 1000.50, 'AB41562', '2012/2/26');

SELECT * from Book

DROP TABLE Authors

create table Authors(
Id integer PRIMARY KEY,
Name text not null,
Gender char(1),
Address nvarchar(200),
Email nvarchar(200),
Dob varchar(100),
Bookid integer,
FOREIGN KEY (Bookid) REFERENCES Book(Id)
);


DROP TABLE Authors

INSERT INTO Authors
VALUES(NULL, 'Pascal', 'M', 'ghorahi', 'daman@gmail.com', '2005/2/23', 1);
INSERT INTO Authors
VALUES(NULL, 'Newton', 'M', 'Tulsipur', 'newton@gmail.com', '2007/2/23', 1);


SELECT * from Authors

--Who are the authors of book titled machine learning

SELECT a.Name from Authors a 
INNER JOIN Book b on b.Id == a.Bookid
where b.Title like 'Machine learning'