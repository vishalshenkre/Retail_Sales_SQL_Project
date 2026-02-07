CREATE DATABASE RetailSalesDB;
USE RetailSalesDB;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY auto_increment,
    Name VARCHAR(50),
    Email VARCHAR(50),
    Phone VARCHAR(15),
    Address VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY auto_increment,
    Name VARCHAR(50),
    Category VARCHAR(30),
    Price DECIMAL(10,2),
    StockQty INT
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY auto_increment,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY auto_increment,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY auto_increment,
    OrderID INT,
    PaymentDate DATE,
    Amount DECIMAL(10,2),
    Mode VARCHAR(20),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Customers VALUES
(1,'Amit Sharma','amit@gmail.com','9876543210','Delhi'),
(2,'Priya Singh','priya@gmail.com','9123456780','Mumbai'),
(3,'Rahul Verma','rahul@gmail.com','9988776655','Bangalore'),
(4,'Sneha Kapoor','sneha@gmail.com','9876501234','Hyderabad'),
(5,'Vikas Mehta','vikas@gmail.com','9812345678','Chennai'),
(6,'Neha Gupta','neha@gmail.com','9123459876','Pune'),
(7,'Rohan Das','rohan@gmail.com','9988123456','Kolkata'),
(8,'Anjali Nair','anjali@gmail.com','9876123450','Kerala'),
(9,'Karan Malhotra','karan@gmail.com','9812341111','Delhi'),
(10,'Meena Joshi','meena@gmail.com','9812342222','Mumbai'),
(11,'Suresh Patil','suresh@gmail.com','9812343333','Pune'),
(12,'Deepa Rao','deepa@gmail.com','9812344444','Hyderabad'),
(13,'Arjun Yadav','arjun@gmail.com','9812345555','Lucknow'),
(14,'Pooja Jain','pooja@gmail.com','9812346666','Jaipur'),
(15,'Manish Kumar','manish@gmail.com','9812347777','Delhi'),
(16,'Ritika Sen','ritika@gmail.com','9812348888','Kolkata'),
(17,'Alok Mishra','alok@gmail.com','9812349999','Patna'),
(18,'Divya Reddy','divya@gmail.com','9812350000','Hyderabad'),
(19,'Sanjay Roy','sanjay@gmail.com','9812351111','Kolkata'),
(20,'Nisha Bhatia','nisha@gmail.com','9812352222','Chandigarh'),
(21,'Rajesh Kumar','rajesh@gmail.com','9812353333','Delhi'),
(22,'Sunita Sharma','sunita@gmail.com','9812354444','Mumbai'),
(23,'Mohit Agarwal','mohit@gmail.com','9812355555','Lucknow'),
(24,'Geeta Patel','geeta@gmail.com','9812356666','Ahmedabad'),
(25,'Ashok Reddy','ashok@gmail.com','9812357777','Hyderabad'),
(26,'Varun Singh','varun@gmail.com','9812358888','Kanpur'),
(27,'Shalini Gupta','shalini@gmail.com','9812359999','Indore'),
(28,'Ravi Nair','ravi@gmail.com','9812360000','Kerala'),
(29,'Komal Jain','komal@gmail.com','9812361111','Jaipur'),
(30,'Ankit Mehta','ankit@gmail.com','9812362222','Chennai'),
(31,'Snehal Patil','snehal@gmail.com','9812363333','Pune'),
(32,'Ajay Das','ajay@gmail.com','9812364444','Kolkata'),
(33,'Megha Kapoor','megha@gmail.com','9812365555','Delhi'),
(34,'Harish Rao','harish@gmail.com','9812366666','Hyderabad'),
(35,'Ritu Malhotra','ritu@gmail.com','9812367777','Mumbai'),
(36,'Sandeep Yadav','sandeep@gmail.com','9812368888','Lucknow'),
(37,'Poonam Sen','poonam@gmail.com','9812369999','Patna'),
(38,'Naveen Roy','naveen@gmail.com','9812370000','Kolkata'),
(39,'Kavita Reddy','kavita@gmail.com','9812371111','Hyderabad'),
(40,'Tarun Jain','tarun@gmail.com','9812372222','Jaipur'),
(41,'Rakesh Kumar','rakesh@gmail.com','9812373333','Delhi'),
(42,'Seema Gupta','seema@gmail.com','9812374444','Mumbai'),
(43,'Anurag Verma','anurag@gmail.com','9812375555','Bangalore'),
(44,'Payal Nair','payal@gmail.com','9812376666','Kerala'),
(45,'Vinod Mehta','vinod@gmail.com','9812377777','Chennai'),
(46,'Kirti Sen','kirti@gmail.com','9812378888','Kolkata'),
(47,'Abhishek Rao','abhishek@gmail.com','9812379999','Hyderabad'),
(48,'Mona Das','mona@gmail.com','9812380000','Kolkata'),
(49,'Gaurav Sharma','gaurav@gmail.com','9812381111','Delhi'),
(50,'Swati Kapoor','swati@gmail.com','9812382222','Mumbai');

INSERT INTO Products VALUES
(101,'Laptop','Electronics',55000,20),
(102,'Mobile Phone','Electronics',25000,50),
(103,'Headphones','Accessories',2000,100),
(104,'Office Chair','Furniture',7000,15),
(105,'Smartwatch','Electronics',12000,30),
(106,'Tablet','Electronics',30000,25),
(107,'Bookshelf','Furniture',8000,10),
(108,'Bluetooth Speaker','Accessories',5000,40),
(109,'Monitor','Electronics',15000,18),
(110,'Keyboard','Accessories',1500,60),
(111,'Mouse','Accessories',800,70),
(112,'Printer','Electronics',10000,12),
(113,'Desk Lamp','Furniture',2500,25),
(114,'Router','Electronics',4000,20),
(115,'External HDD','Electronics',6000,15),
(116,'Shoes','Clothing',3000,50),
(117,'T-Shirt','Clothing',1000,100),
(118,'Jeans','Clothing',2000,80),
(119,'Jacket','Clothing',4000,40),
(120,'Backpack','Accessories',2500,30),
(121,'Dining Table','Furniture',15000,8),
(122,'Sofa','Furniture',25000,5),
(123,'Air Conditioner','Electronics',35000,10),
(124,'Refrigerator','Electronics',40000,7),
(125,'Microwave','Electronics',12000,12),
(126,'Washing Machine','Electronics',28000,6),
(127,'Ceiling Fan','Electronics',3000,20),
(128,'Shoes Formal','Clothing',3500,40),
(129,'Sports Shoes','Clothing',4500,35),
(130,'Winter Coat','Clothing',6000,25),
(131,'Rice Bag 10kg','Grocery',500,100),
(132,'Milk 1L','Grocery',50,200),
(133,'Bread','Grocery',40,150),
(134,'Eggs 12pcs','Grocery',80,120),
(135,'Cooking Oil 1L','Grocery',150,100),
(136,'Sugar 1kg','Grocery',60,150),
(137,'Tea Pack','Grocery',120,80),
(138,'Coffee Pack','Grocery',200,70),
(139,'Biscuits','Grocery',30,200),
(140,'Chocolate','Grocery',100,150);

INSERT INTO Orders VALUES
(1001,1,'2026-01-05',57000),
(1002,2,'2026-01-06',25000),
(1003,3,'2026-01-07',9000),
(1004,4,'2026-01-08',15000),
(1005,5,'2026-01-09',42000),
(1006,6,'2026-01-10',25000),
(1007,7,'2026-01-11',8000),
(1008,8,'2026-01-12',45000),
(1009,9,'2026-01-13',15000),
(1010,10,'2026-01-14',12000),
(1011,11,'2026-01-15',18000),
(1012,12,'2026-01-16',25000),
(1013,13,'2026-01-17',30000),
(1014,14,'2026-01-18',22000),
(1015,15,'2026-01-19',15000),
(1016,16,'2026-01-20',17000),
(1017,17,'2026-01-21',28000),
(1018,18,'2026-01-22',35000),
(1019,19,'2026-01-23',26000),
(1020,20,'2026-01-24',19000),
(1021,21,'2026-01-25',22000),
(1022,22,'2026-01-26',33000),
(1023,23,'2026-01-27',27000),
(1024,24,'2026-01-28',31000),
(1025,25,'2026-01-29',29000),
(1026,26,'2026-01-30',15000),
(1027,27,'2026-01-31',18000),
(1028,28,'2026-02-01',21000),
(1029,29,'2026-02-02',24000),
(1030,30,'2026-02-03',20000),
(1031,31,'2026-02-04',17000),
(1032,32,'2026-02-05',26000),
(1033,33,'2026-02-06',28000),
(1034,34,'2026-02-07',30000),
(1035,35,'2026-02-08',22000),
(1036,36,'2026-02-09',25000),
(1037,37,'2026-02-10',27000),
(1038,38,'2026-02-11',32000),
(1039,39,'2026-02-12',35000),
(1040,40,'2026-02-13',19000),
(1041,41,'2026-02-14',21000),
(1042,42,'2026-02-15',23000),
(1043,43,'2026-02-16',25000),
(1044,44,'2026-02-17',27000),
(1045,45,'2026-02-18',29000),
(1046,46,'2026-02-19',31000),
(1047,47,'2026-02-20',33000),
(1048,48,'2026-02-21',35000),
(1049,49,'2026-02-22',37000),
(1050,50,'2026-02-23',39000),
(1051,1,'2026-02-24',20000),
(1052,2,'2026-02-25',22000),
(1053,3,'2026-02-26',24000),
(1054,4,'2026-02-27',26000),
(1055,5,'2026-02-28',28000),
(1056,6,'2026-03-01',30000),
(1057,7,'2026-03-02',32000),
(1058,8,'2026-03-03',34000),
(1059,9,'2026-03-04',36000),
(1060,10,'2026-03-05',38000);

INSERT INTO OrderDetails VALUES
(1,1001,101,1,55000),(2,1001,103,1,2000),
(3,1002,102,1,25000),
(4,1003,104,1,7000),(5,1003,103,1,2000),
(6,1004,108,3,5000),
(7,1005,105,2,12000),(8,1005,109,1,15000),
(9,1006,106,1,30000),(10,1006,110,2,1500),
(11,1007,107,1,8000),
(12,1008,102,1,25000),(13,1008,103,2,2000),(14,1008,105,1,12000),
(15,1009,109,1,15000),
(16,1010,105,1,12000),
(17,1011,112,1,10000),(18,1011,103,4,2000),
(19,1012,101,1,55000),
(20,1013,106,1,30000),
(21,1014,120,2,2500),(22,1014,116,2,3000),
(23,1015,117,5,1000),(24,1015,118,2,2000),
(25,1016,119,1,4000),(26,1016,103,2,2000),
(27,1017,115,2,6000),(28,1017,114,1,4000),
(29,1018,101,1,55000),
(30,1019,102,1,25000),(31,1019,103,3,2000),
(32,1020,104,1,7000),(33,1020,110,2,1500),
(34,1021,108,2,5000),(35,1021,103,1,2000),
(36,1022,105,1,12000),(37,1022,109,1,15000),
(38,1023,106,1,30000),(39,1023,103,2,2000),
(40,1024,107,1,8000),(41,1024,120,1,2500),
(42,1025,102,1,25000),(43,1025,103,1,2000),
(44,1026,116,2,3000),(45,1026,117,3,1000),
(46,1027,118,2,2000),(47,1027,119,1,4000),
(48,1028,101,1,55000),(49,1028,103,1,2000),
(50,1029,105,1,12000),(51,1029,110,2,1500),
(52,1030,108,2,5000),(53,1030,103,1,2000),
(54,1031,109,1,15000),(55,1031,103,2,2000),
(56,1032,106,1,30000),(57,1032,120,1,2500),
(58,1033,102,1,25000),(59,1033,103,1,2000),
(60,1034,101,1,55000),(61,1034,103,2,2000),
(62,1035,104,1,7000),(63,1035,110,1,1500),
(64,1036,105,1,12000),(65,1036,103,1,2000),
(66,1037,106,1,30000),(67,1037,103,2,2000),
(68,1038,107,1,8000),(69,1038,120,2,2500),
(70,1039,102,1,25000),(71,1039,103,1,2000),
(72,1040,101,1,55000),(73,1040,103,1,2000),
(74,1041,105,1,12000),(75,1041,109,1,15000),
(76,1042,106,1,30000),(77,1042,103,1,2000),
(78,1043,107,1,8000),(79,1043,120,1,2500),
(80,1044,102,1,25000);

INSERT INTO Payments VALUES
(501,1001,'2026-01-05',57000,'Credit Card'),
(502,1002,'2026-01-06',25000,'UPI'),
(503,1003,'2026-01-07',9000,'Cash'),
(504,1004,'2026-01-08',15000,'Debit Card'),
(505,1005,'2026-01-09',42000,'Net Banking'),
(506,1006,'2026-01-10',25000,'Credit Card'),
(507,1007,'2026-01-11',8000,'Cash'),
(508,1008,'2026-01-12',45000,'UPI'),
(509,1009,'2026-01-13',15000,'Debit Card'),
(510,1010,'2026-01-14',12000,'Credit Card'),
(511,1011,'2026-01-15',18000,'UPI'),
(512,1012,'2026-01-16',25000,'Net Banking'),
(513,1013,'2026-01-17',30000,'Credit Card'),
(514,1014,'2026-01-18',22000,'Cash'),
(515,1015,'2026-01-19',15000,'Debit Card'),
(516,1016,'2026-01-20',17000,'UPI'),
(517,1017,'2026-01-21',28000,'Net Banking'),
(518,1018,'2026-01-22',35000,'Credit Card'),
(519,1019,'2026-01-23',26000,'Cash'),
(520,1020,'2026-01-24',19000,'Debit Card'),
(521,1021,'2026-01-25',22000,'UPI'),
(522,1022,'2026-01-26',33000,'Net Banking'),
(523,1023,'2026-01-27',27000,'Credit Card'),
(524,1024,'2026-01-28',31000,'Cash'),
(525,1025,'2026-01-29',29000,'Debit Card'),
(526,1026,'2026-01-30',15000,'UPI'),
(527,1027,'2026-01-31',18000,'Net Banking'),
(528,1028,'2026-02-01',21000,'Credit Card'),
(529,1029,'2026-02-02',24000,'Cash'),
(530,1030,'2026-02-03',20000,'Debit Card'),
(531,1031,'2026-02-04',17000,'UPI'),
(532,1032,'2026-02-05',26000,'Net Banking'),
(533,1033,'2026-02-06',28000,'Credit Card'),
(534,1034,'2026-02-07',30000,'Cash'),
(535,1035,'2026-02-08',22000,'Debit Card'),
(536,1036,'2026-02-09',25000,'UPI'),
(537,1037,'2026-02-10',27000,'Net Banking'),
(538,1038,'2026-02-11',32000,'Credit Card'),
(539,1039,'2026-02-12',35000,'Cash'),
(540,1040,'2026-02-13',19000,'Debit Card');



-- Customer Purchase Report
SELECT c.Name, o.OrderID, o.OrderDate, SUM(od.Quantity * od.Price) AS Total
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY c.Name, o.OrderID, o.OrderDate;

-- Product Sales Summary
SELECT p.Name, SUM(od.Quantity) AS TotalSold
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.Name
ORDER BY TotalSold DESC;

-- Customers who spent above average
SELECT Name FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID FROM Orders
    GROUP BY CustomerID
    HAVING SUM(TotalAmount) > (SELECT AVG(TotalAmount) FROM Orders)
);

-- Products sold more than average quantity
SELECT Name FROM Products
WHERE ProductID IN (
    SELECT ProductID FROM OrderDetails
    GROUP BY ProductID
    HAVING SUM(Quantity) > (SELECT AVG(Quantity) FROM OrderDetails)
);

-- Top Selling Products View
CREATE VIEW TopSellingProducts AS
SELECT p.Name, SUM(od.Quantity) AS TotalSold
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.Name;

-- Monthly Revenue View
CREATE VIEW MonthlyRevenue AS
SELECT MONTH(OrderDate) AS Month, SUM(TotalAmount) AS Revenue
FROM Orders
GROUP BY MONTH(OrderDate);

DELIMITER $$

CREATE TRIGGER trg_UpdateStock
AFTER INSERT ON OrderDetails
FOR EACH ROW
BEGIN
  UPDATE Products
  SET StockQty = StockQty - NEW.Quantity
  WHERE ProductID = NEW.ProductID;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE AddOrder(
  IN p_CustomerID INT,
  IN p_ProductID INT,
  IN p_Quantity INT
)
BEGIN
  DECLARE v_Price DECIMAL(10,2);
  DECLARE v_Total DECIMAL(10,2);
  
  -- Get product price
  SELECT Price INTO v_Price
  FROM Products
  WHERE ProductID = p_ProductID;

  SET v_Total = v_Price * p_Quantity;

  -- Create order
  INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
  VALUES (p_CustomerID, CURDATE(), v_Total);

  -- Get new OrderID
  SET @newOrderID = LAST_INSERT_ID();

  -- Insert order detail
  INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Price)
  VALUES (@newOrderID, p_ProductID, p_Quantity, v_Price);
END$$

DELIMITER ;

-- Top 5 Customers by Total Spend
SELECT c.Name, SUM(o.TotalAmount) AS TotalSpend
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.Name
ORDER BY TotalSpend DESC
LIMIT 5;

-- Products Never Ordered
SELECT Name 
FROM Products
WHERE ProductID NOT IN (
    SELECT DISTINCT ProductID FROM OrderDetails
);

-- Most Popular Product Category
SELECT Category, SUM(od.Quantity) AS TotalSold
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY Category
ORDER BY TotalSold DESC
LIMIT 1;

-- Monthly Sales Report
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, SUM(TotalAmount) AS Revenue
FROM Orders
GROUP BY DATE_FORMAT(OrderDate, '%Y-%m')
ORDER BY Month;

select * from customers;
select customerid,name,address from customers;
select * from products where price>10000;
select * from products where category="electronics";
select name,address from customers where address="delhi";
select * from orders where orderdate>"2026-02-01";
select count(*) from customers;
select max(price) from products;
select min(price) from products;
select * from orders order by totalamount desc;
select count(category) as grocery_count from products where category='grocery';
select distinct mode from payments;
select * from orders where customerid=1;
select sum(stockQty) from products;
select * from products order by price desc limit 5;


select c.name as name,o.orderid,o.orderdate from customers c 
join orders o on c.customerid=o.customerid;

select p.name as product_name,p.category,o.quantity from products p
join orderdetails o on p.productid=o.productid;

select sum(amount) as total_amount from payments;

select c.customerid,sum(o.totalamount) from customers c
join orders o on c.customerid=o.customerid 
group by c.customerid;

select customerid,count(orderid) from orders
group by customerid
having count(orderid)>1;

select mode,sum(amount) as total_amount from payments
group by mode;
select p.name as product,sum(o.quantity) from products p
inner join orderdetails o 
on p.productid=o.ProductID
group by p.name;
select o.orderid,p.mode from orders o inner join
payments p on o.orderid=p.orderid
where mode="UPI";
select category,round(avg(price),2)
as average from products 
group by category;
SELECT c.customerid, c.name
FROM customers c
LEFT JOIN orders o
    ON c.customerid = o.customerid
WHERE o.customerid IS NULL;

select orderdate ,sum(totalamount) as total_amount
from orders 
group by orderdate;
select p.productid as id,p.name as product_name
from products p left join orderdetails od
on p.ProductID=od.ProductID
where od.ProductID is null;
select p.category ,sum(od.price*od.quantity) as total_sales
from products p join orderdetails od
on p.ProductID=od.ProductID
group by p.category
having p.category="electronics";
--            OR 
select p.category ,sum(od.price*od.Quantity) as total_sales
from products p join orderdetails od
on p.ProductID=od.ProductID
where p.Category="electronics"
group by p.category;
select c.customerid,c.name,sum(o.Totalamount) 
as total_amount
from customers c join orders o
on c.CustomerID=o.CustomerID
group by c.CustomerID,c.Name
order by total_amount desc
limit 5;
select c.address,count(o.orderid) as num_of_orders 
from customers c join orders o 
on c.customerid=o.customerid
group by c.address;

select p.productid,p.name as product_name ,sum(od.quantity)
as quantity
from products p join orderdetails od
on p.productid=od.productid
group by p.productid,p.name
order by sum(od.quantity) desc
limit 1;

























































