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
    AuthorsDetailsId integer,
    FOREIGN KEY (AuthorsDetailsId) REFERENCES Authors(Id)
   );

--Delete table
drop table AuthorsDetails
--Relations one to one, one to many, many to many

-- Constraints
ALTER TABLE Orders
ADD FOREIGN KEY (AuthorsDetailsId) REFERENCES AuthorsDetails(Id);