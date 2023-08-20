CREATE TABLE Customers (
    Cnum INT PRIMARY KEY,
    Cname VARCHAR(255),
    City VARCHAR(255) NOT NULL,
    Snum INT,
    FOREIGN KEY (Snum) REFERENCES SalesPeople(Snum)
);

INSERT INTO Customers (Cnum, Cname, City, Snum)
VALUES
    (2001, 'Hoffman', 'London', 1001),
    (2002, 'Giovanni', 'Rome', 1003),
    (2003, 'Liu', 'Sanjose', 1002),
    (2004, 'Grass', 'Berlin', 1002),
    (2006, 'Clemens', 'London', 1001),
    (2008, 'Cisneros', 'Sanjose', 1007),
    (2007, 'Pereira', 'Rome', 1004);
