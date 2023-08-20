CREATE TABLE SalesPeople (
    Snum INT PRIMARY KEY,
    Sname VARCHAR(255) UNIQUE,
    City VARCHAR(255),
    Comm DECIMAL(5, 2)
);

INSERT INTO SalesPeople (Snum, Sname, City, Comm)
VALUES
    (1001, 'Peel', 'London', 0.12),
    (1002, 'Serres', 'Sanjose', 0.13),
    (1004, 'Motika', 'London', 0.11),
    (1007, 'Rifkin', 'Barcelona', 0.15),
    (1003, 'Axelrod', 'Newyork', 0.10);
