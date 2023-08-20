--Count the number of Salesperson whose name begin with ‘a’/’A’.
SELECT COUNT(*)
FROM SalesPeople
WHERE Sname LIKE 'a%' OR Sname LIKE 'A%';

--Display all the Salesperson whose all orders worth is more than Rs. 2000
SELECT DISTINCT sp.Snum, sp.Sname
FROM SalesPeople sp
INNER JOIN Orders o ON sp.Snum = o.Snum
GROUP BY sp.Snum, sp.Sname
HAVING SUM(o.Amt) > 2000;

--Count the number of Salesperson belonging to Newyork
SELECT COUNT(*)
FROM SalesPeople
WHERE City = 'Newyork';

--Display the number of Salespeople belonging to London and belonging to Paris.
SELECT City, COUNT(*) AS NumberOfSalespeople
FROM SalesPeople
WHERE City IN ('London', 'Paris')
GROUP BY City;

--Display the number of orders taken by each Salesperson and their date of orders.
SELECT sp.Snum, sp.Sname, COUNT(o.Onum) AS NumberOfOrders, GROUP_CONCAT(o.Odate) AS OrderDates
FROM SalesPeople sp
LEFT JOIN Orders o ON sp.Snum = o.Snum
GROUP BY sp.Snum, sp.Sname;
