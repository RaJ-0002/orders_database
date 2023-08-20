CREATE TABLE Orders (
    Onum INT PRIMARY KEY,
    Amt DECIMAL(10, 2),
    Odate DATE,
    Cnum INT,
    Snum INT,
    FOREIGN KEY (Cnum) REFERENCES Customers(Cnum),
    FOREIGN KEY (Snum) REFERENCES SalesPeople(Snum)
);

INSERT INTO Orders (Onum, Amt, Odate, Cnum, Snum)
VALUES
    (3001, 18.69, '1990-03-10', 2008, 1007),
    (3003, 767.19, '1990-03-10', 2001, 1001),
    (3002, 1900.10, '1990-03-10', 2007, 1004),
    (3005, 5160.45, '1990-03-10', 2003, 1002),
    (3006, 1098.16, '1990-03-10', 2008, 1007),
    (3009, 1713.23, '1990-04-10', 2002, 1003),
    (3007, 75.75, '1990-04-10', 2004, 1002),
    (3008, 4273.00, '1990-05-10', 2006, 1001),
    (3010, 1309.95, '1990-06-10', 2004, 1002),
    (3011, 9891.88, '1990-06-10', 2006, 1001);
