-- Database Creation
create database Ecommerce
use Ecommerce


-- Excel.csv to sql inserting data 
--BULK INSERT Customers
--FROM 'D:\Shanku\Data Analyst\Task3\ecommerce_dataset_10000.csv'
--WITH (
    --FIRSTROW = 2,  -- Skip header
    --FIELDTERMINATOR = ',',   -- CSV uses comma
    --ROWTERMINATOR = '\n',    -- end of line
    --TABLOCK
--);

-- creating tables 
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(20),
    age_group VARCHAR(20),
    signup_date DATE,
    country VARCHAR(50)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

--Insert values into tables
INSERT INTO Customers VALUES
(1,'John','Smith','Male','26-35','2023-01-10','USA'),
(2,'Sarah','Williams','Female','18-25','2023-01-11','UK'),
(3,'Mike','Brown','Male','26-35','2023-01-12','Canada'),
(4,'Linda','Johnson','Female',NULL,'2023-01-13','USA'),
(5,'David','Jones','Male','36-45','2023-01-14',NULL),
(6,'Emma','Taylor','Female','26-35','2023-01-15','Australia'),
(7,'James',NULL,'Male','18-25','2023-01-16','USA'),
(8,'Sophia','Moore','Female','26-35','2023-01-17','Canada'),
(9,'Noah','Martin','Male',NULL,'2023-01-18','UK'),
(10,'Ava','Lee','Female','18-25','2023-01-19','USA'),
(11,'Olivia','Clark','Female','26-35','2023-01-20','Australia'),
(12,'Liam','Hall','Male','36-45','2023-01-21',NULL),
(13,'Mason','Young','Male',NULL,'2023-01-22','Canada'),
(14,'Ethan','King','Male','46-60','2023-01-23','USA'),
(15,'Isabella','Scott','Female','18-25','2023-01-24','UK'),
(16,'Lucas','Green',NULL,'26-35','2023-01-25','Australia'),
(17,'Mia','Adams','Female','36-45','2023-01-26','USA'),
(18,'Charlotte','Baker','Female','26-35','2023-01-27','USA'),
(19,'Elijah','Nelson','Male',NULL,'2023-01-28','Canada'),
(20,'Harper',NULL,'Female','26-35','2023-01-29','UK'),
(21,'Amelia','Rivera','Female','26-35','2023-01-30','USA'),
(22,'Jacob','Campbell','Male','18-25','2023-01-31','Canada'),
(23,'Michael','Mitchell','Male','26-35','2023-02-01',NULL),
(24,'Benjamin','Perez','Male','36-45','2023-02-02','Australia'),
(25,'Ella','Roberts','Female',NULL,'2023-02-03','USA'),
(26,'Henry','Turner','Male','26-35','2023-02-04','UK'),
(27,'Evelyn','Phillips','Female','36-45','2023-02-05','USA'),
(28,'Alexander','Campbell','Male','46-60','2023-02-06','Canada'),
(29,'Sebastian','Evans',NULL,'26-35','2023-02-07','USA'),
(30,'Aiden','Edwards','Male','18-25','2023-02-08','Australia'),
(31,'Grace','Collins','Female','26-35','2023-02-09','Canada'),
(32,'Chloe','Stewart','Female','18-25','2023-02-10',NULL),
(33,'Zoey','Sanchez','Female','26-35','2023-02-11','UK'),
(34,'Hannah','Morris','Female',NULL,'2023-02-12','USA'),
(35,'Jack','Rogers','Male','26-35','2023-02-13','Australia'),
(36,'Daniel','Reed','Male','36-45','2023-02-14','UK'),
(37,'Victoria','Cook','Female','18-25','2023-02-15','USA'),
(38,'Samuel','Morgan','Male','26-35','2023-02-16','Canada'),
(39,'Natalie','Bell',NULL,'36-45','2023-02-17','USA'),
(40,'Leo','Murphy','Male','46-60','2023-02-18','Australia'),
(41,'Layla','Bailey','Female','18-25','2023-02-19','UK'),
(42,'Wyatt','Rivera','Male','26-35','2023-02-20',NULL),
(43,'Lily','Cooper','Female','18-25','2023-02-21','USA'),
(44,'Owen','Richardson','Male','36-45','2023-02-22','Canada'),
(45,'Scarlett','Cox','Female',NULL,'2023-02-23','USA'),
(46,'Gabriel','Howard','Male','26-35','2023-02-24','Australia'),
(47,'Aria','Ward','Female','36-45','2023-02-25','UK'),
(48,'Matthew','Brooks','Male','46-60','2023-02-26','USA'),
(49,'Nora','Sanders','Female','26-35','2023-02-27',NULL),
(50,'Eleanor','Price','Female','36-45','2023-02-28','Canada'),
(51,'Luna','Henderson','Female','18-25','2023-03-01','UK'),
(52,'Eli','Cole','Male','26-35','2023-03-02','USA'),
(53,'Avery','Hayes','Female','36-45','2023-03-03',NULL),
(54,'Wyatt','Ramirez','Male','26-35','2023-03-04','Canada'),
(55,'Paisley','James','Female',NULL,'2023-03-05','Australia'),
(56,'Jaxon','Watson','Male','18-25','2023-03-06','USA'),
(57,'Penelope','Brooks','Female','26-35','2023-03-07','UK'),
(58,'Nathan','Kelly',NULL,'36-45','2023-03-08','Canada'),
(59,'Addison',NULL,'Female','18-25','2023-03-09','USA'),
(60,'Caleb','Sanders','Male','26-35','2023-03-10','Australia'),
(61,'Zoey','Price','Female','26-35','2023-03-11','USA'),
(62,'Julian','Bennett','Male','36-45','2023-03-12','UK'),
(63,'Nora','Wood','Female',NULL,'2023-03-13','Canada'),
(64,'Christian','Barnes','Male','26-35','2023-03-14',NULL),
(65,'Lily','Ross','Female','18-25','2023-03-15','USA'),
(66,'Hunter','Henderson','Male','26-35','2023-03-16','Australia'),
(67,'Brooklyn','Cole','Female','36-45','2023-03-17','Canada'),
(68,'Isaiah','Powell',NULL,'18-25','2023-03-18','USA'),
(69,'Levi','Long','Male','26-35','2023-03-19','UK'),
(70,'Hannah','Patterson','Female','36-45','2023-03-20','USA'),
(71,'Eleanor','Reed','Female',NULL,'2023-03-21','Australia'),
(72,'David','Gonzalez','Male','18-25','2023-03-22','Canada'),
(73,'Madison','Bryant','Female','26-35','2023-03-23','USA'),
(74,'Owen','Foster','Male','36-45','2023-03-24','UK'),
(75,'Layla','Alexander','Female','26-35',NULL,NULL),
(76,'Ezra','Russell','Male','18-25','2023-03-26','Canada'),
(77,'Stella','Griffin','Female','26-35','2023-03-27','USA'),
(78,'Isaac','Diaz',NULL,'36-45','2023-03-28','Australia'),
(79,'Aubrey','Hayes','Female','26-35','2023-03-29','UK'),
(80,'Hudson','Freeman','Male','18-25','2023-03-30',NULL),
(81,'Savannah','Wells','Female','26-35','2023-03-31','USA'),
(82,'Luke','Shaw','Male','36-45','2023-04-01','Canada'),
(83,'Violet','Hanson','Female',NULL,'2023-04-02','UK'),
(84,'Anthony','Rice','Male','26-35','2023-04-03','Australia'),
(85,'Ariana','Wallace','Female','18-25','2023-04-04','USA'),
(86,'Thomas','Gibson','Male','26-35','2023-04-05',NULL),
(87,'Camila','Mcdonald','Female','36-45','2023-04-06','Canada'),
(88,'Christopher','Cruz','Male',NULL,'2023-04-07','USA'),
(89,'Hazel','Marshall','Female','26-35','2023-04-08','UK'),
(90,'Joshua','Ortiz','Male','18-25','2023-04-09','Australia'),
(91,'Aurora','Gomez','Female','26-35','2023-04-10',NULL),
(92,'Andrew','Murray','Male','36-45','2023-04-11','USA'),
(93,'Naomi','Ford','Female','18-25','2023-04-12','Canada'),
(94,'Charles','Hamilton',NULL,'26-35','2023-04-13','UK'),
(95,'Ellie','Graham','Female','36-45','2023-04-14','Australia'),
(96,'Adrian','Sullivan','Male','26-35','2023-04-15','USA'),
(97,'Caroline','Porter','Female',NULL,'2023-04-16','Canada'),
(98,'Jonathan','Hunter','Male','18-25','2023-04-17','UK'),
(99,'Peyton','Hicks','Female','26-35','2023-04-18','USA'),
(100,'Brody','Cunningham','Male','36-45','2023-04-19','Australia');


INSERT INTO Products VALUES
(1,'Smartphone X','Electronics',699.99,50),
(2,'Laptop Pro','Electronics',1299.99,30),
(3,'Wireless Earbuds','Electronics',89.99,100),
(4,'Sports Shoes','Fashion',49.99,70),
(5,'Men T-Shirt','Fashion',19.99,200),
(6,'Blender Ultra','Home',59.99,40),
(7,'Microwave Oven','Home',149.99,20),
(8,'Office Chair',NULL,89.99,15),
(9,'LED Monitor','Electronics',199.99,25),
(10,'Coffee Maker','Home',39.99,NULL),
(11,'Backpack','Fashion',29.99,60),
(12,'Running Watch','Electronics',129.99,35),
(13,'Vacuum Cleaner','Home',89.99,18),
(14,'Desk Lamp','Home',24.99,80),
(15,'Jacket',NULL,79.99,25);

INSERT INTO Orders VALUES
(1,1,1,'2023-03-10',1,699.99),
(2,2,3,'2023-03-11',2,179.98),
(3,3,5,'2023-03-12',1,19.99),
(4,4,2,'2023-03-13',1,1299.99),
(5,5,4,'2023-03-14',3,149.97),
(6,6,1,'2023-03-15',NULL,NULL),
(7,7,8,'2023-03-16',1,89.99),
(8,8,10,'2023-03-17',1,39.99),
(9,9,12,'2023-03-18',2,259.98),
(10,10,3,'2023-03-19',NULL,NULL),
(11,11,6,'2023-03-20',1,59.99),
(12,12,9,'2023-03-21',1,199.99),
(13,13,15,'2023-03-22',1,79.99),
(14,14,11,'2023-03-23',2,59.98),
(15,15,7,'2023-03-24',1,149.99),
(16,16,14,'2023-03-25',NULL,NULL),
(17,17,4,'2023-03-26',1,49.99),
(18,18,2,'2023-03-27',1,1299.99),
(19,19,5,'2023-03-28',4,79.96),
(20,20,6,'2023-03-29',1,59.99);


-- selecting data from tables
select * from Customers
select * from Products
select * from Orders

-- Where 
select first_name,last_name,country from Customers where country='UK'
select product_name,price,stock from Products where price>500 and stock>=25
select order_id,quantity from Orders where quantity>1

--Group by,Having 
select first_name from Customers group by  first_name
select country from Customers group by  country having country='UK'

select category from Products group by category
select price from Products group by price having price <=1000

select total_amount from Orders group by total_amount
select quantity from Orders group by quantity having quantity>1

--Order by
select * from Customers order by country asc 
select * from Products order by stock
select * from Orders order by product_id desc

-- Joins
select * from Customers c inner join Products p on c.customer_id=p.product_id
select * from Customers c left join Orders o on c.customer_id=o.order_id
select * from Products p right join Orders o on p.product_id=o.order_id
select * from Orders o full join Products p  on o.order_id=p.product_id
select * from Customers c full join Orders o on  c.customer_id=o.customer_id full join  Products p on o.product_id=p.product_id

--Subquery
select o.* from
(select *,row_number() over(order by total_amount desc) as Row_Num from Orders) o
select o.* from
(select *,row_number() over(partition by quantity order by total_amount desc) as Row_Num from Orders) o

select p.* from 
(select *,rank() over(order by stock) as Rank from Products) p
select p.* from 
(select *,rank() over(partition by category order by stock) as Rank from Products) p

select c.* from 
(select *, dense_rank() over(order by first_name) as DenseRank from Customers) c
select c.* from 
(select *, dense_rank() over(partition by gender order by first_name) as DenseRank from Customers) c

SELECT customer_id, first_name
FROM Customers
WHERE customer_id IN (SELECT customer_id FROM Orders);

-- Aggegratge functions
select  sum(price) as Total_sum from  Products
select avg(total_amount) as Average from Orders
select round(avg(total_amount),3) as Average from Orders
select sum(p.stock) as total,avg(o.quantity) as finalavg from Products p join Orders o on p.product_id=o.order_id
select min(price)as minimum from Products
select max(quantity) as maximum from Orders

--views
create view V_customers as
select first_name,last_name,country from Customers 
select * from V_customers

create view V_productsOrders as 
select p.product_id,p.product_name,p.category,o.order_id,o.quantity,o.total_amount from Products p  join 
Orders o on p.product_id=o.order_id

create view V_produOrders as 
select p.product_id,p.product_name,p.category,o.order_id,o.quantity,o.total_amount from Products p  join 
Orders o on p.product_id=o.product_id
select * from V_productsOrders
select * from V_produOrders

--Indexes
create nonclustered index  Customers_index
on Customers(first_name,last_name,gender)

create nonclustered index Produtcs_index on
Products(product_name,category)

create nonclustered index Orders_index on
Orders(order_date,quantity,total_amount)
