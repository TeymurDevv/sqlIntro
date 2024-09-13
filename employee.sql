CREATE TABLE Employees (
    id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Fullname NVARCHAR(250) NOT NULL,
    Age INT NOT NULL CHECK (Age >= 0),
    email NVARCHAR(255) NOT NULL UNIQUE,
    salary DECIMAL(10,2) NOT NULL CHECK (salary > 300 AND salary < 2000)
);
INSERT INTO Employees (Fullname, Age, email, salary) 
VALUES ('Teymur Suleymanov', 16, 'teymursuleymanli2008@gmail.com', 2000.00),
       ('Nihad Ibadzade', 16, 'nihadname@gmail.com', 1700.00),
       ('Aysel Suleymanova', 23, 'aysel@aysel.com', 800.00);
	   SELECT * FROM Employees;
	   UPDATE Employees SET salary=1200.56 where id=1
	   SELECT * FROM Employees where salary  BETWEEN  500 And 1400
	   SELECT Fullname, email, salary FROM Employees ORDER BY salary;