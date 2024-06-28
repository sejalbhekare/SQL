create database car_showroom_dbms;
use car_showroom_dbms;


create table car_desc(
car_id int primary key,
Model_name varchar(50) not null,
Engine_type varchar(50) not null,
Transmission_type varchar(20) not null,
Horsepower int not null,
Topspeed int not null,
Fuel_type varchar(30) not null,
Mileage int not null,
Model_year date not null,
Price int not null);
  desc car_desc;
  
  create table car_import(
  import_id int primary key,
  Model_type varchar(50) not null,
  company_name varchar(50) not null,
  import_date date not null,
  import_price int not null);
  desc car_import;
  
  create table car_sales(
  customer_id int primary key,
  c_id int,
  constraint fk_c_id foreign key (c_id) REFERENCES car_desc(car_id) on delete cascade on update cascade,
  customer_name varchar(50) not null,
  state varchar(20) not null,
  contact_no bigint not null,
  Purchase_date date not null,
  Purchase_price int not null);
  desc car_sales;
  
  show tables;
  
  

INSERT INTO car_desc VALUES
(1, 'Toyota Camry', 'Gasoline', 'Automatic', 203, 125, 'Petrol', 28, '2022-01-01', 25000),
(2, 'Honda Civic', 'Gasoline', 'Manual', 158, 118, 'Petrol', 32, '2022-01-01', 22000),
(3, 'Ford Mustang', 'Gasoline', 'Automatic', 450, 155, 'Petrol', 20, '2022-01-01', 45000),
(4, 'Tesla Model S', 'Electric', 'Automatic', 670, 155, 'Electric', 95, '2022-01-01', 80000),
(5, 'BMW 3 Series', 'Gasoline', 'Automatic', 255, 155, 'Petrol', 26, '2022-01-01', 40000),
(6, 'Audi A4', 'Gasoline', 'Automatic', 201, 130, 'Petrol', 30, '2022-01-01', 35000),
(7, 'Mercedes-Benz C-Class', 'Gasoline', 'Automatic', 255, 155, 'Petrol', 28, '2022-01-01', 50000),
(8, 'Chevrolet Corvette', 'Gasoline', 'Automatic', 490, 184, 'Petrol', 19, '2022-01-01', 60000),
(9, 'Nissan Altima', 'Gasoline', 'Automatic', 188, 125, 'Petrol', 32, '2022-01-01', 23000),
(10, 'Hyundai Elantra', 'Gasoline', 'Automatic', 147, 124, 'Petrol', 35, '2022-01-01', 20000),
(11, 'Volvo S60', 'Gasoline', 'Automatic', 250, 145, 'Petrol', 30, '2022-01-01', 45000),
(12, 'Mazda MX-5 Miata', 'Gasoline', 'Manual', 181, 135, 'Petrol', 29, '2022-01-01', 30000),
(13, 'Subaru WRX', 'Gasoline', 'Manual', 268, 150, 'Petrol', 24, '2022-01-01', 35000),
(14, 'Lexus ES', 'Gasoline', 'Automatic', 302, 131, 'Petrol', 26, '2022-01-01', 48000),
(15, 'Kia Optima', 'Gasoline', 'Automatic', 185, 132, 'Petrol', 33, '2022-01-01', 24000),
(16, 'Toyota Corolla', 'Gasoline', 'Automatic', 139, 115, 'Petrol', 30, '2022-01-01', 20000),
(17, 'Honda Accord', 'Gasoline', 'Automatic', 192, 127, 'Petrol', 29, '2022-01-01', 26000),
(18, 'Ford F-150', 'Gasoline', 'Automatic', 290, 120, 'Petrol', 23, '2022-01-01', 35000),
(19, 'Tesla Model 3', 'Electric', 'Automatic', 283, 140, 'Electric', 75, '2022-01-01', 55000),
(20, 'BMW 5 Series', 'Gasoline', 'Automatic', 335, 155, 'Petrol', 24, '2022-01-01', 52000),
(21, 'Audi Q5', 'Gasoline', 'Automatic', 261, 135, 'Petrol', 27, '2022-01-01', 45000),
(22, 'Mercedes-Benz E-Class', 'Gasoline', 'Automatic', 362, 155, 'Petrol', 25, '2022-01-01', 60000),
(23, 'Chevrolet Silverado', 'Gasoline', 'Automatic', 355, 130, 'Petrol', 20, '2022-01-01', 40000),
(24, 'Nissan Rogue', 'Gasoline', 'Automatic', 170, 125, 'Petrol', 28, '2022-01-01', 27000),
(25, 'Hyundai Sonata', 'Gasoline', 'Automatic', 191, 122, 'Petrol', 31, '2022-01-01', 23000),
(26, 'Volvo XC60', 'Gasoline', 'Automatic', 316, 140, 'Petrol', 26, '2022-01-01', 48000),
(27, 'Mazda CX-5', 'Gasoline', 'Automatic', 187, 130, 'Petrol', 29, '2022-01-01', 29000),
(28, 'Subaru Outback', 'Gasoline', 'Automatic', 182, 135, 'Petrol', 28, '2022-01-01', 32000),
(29, 'Lexus RX', 'Gasoline', 'Automatic', 295, 124, 'Petrol', 27, '2022-01-01', 55000),
(30, 'Kia Sorento', 'Gasoline', 'Automatic', 191, 121, 'Petrol', 29, '2022-01-01', 28000);
select * from car_desc;

show tables;
INSERT INTO car_import VALUES
(1001, 'Toyota Camry', 'Toyota', '2022-02-01', 23000),
(1002, 'Honda Civic', 'Honda', '2022-03-15', 20000),
(1003, 'Ford Mustang', 'Ford', '2022-04-20', 42000),
(1004, 'Tesla Model S', 'Tesla', '2022-05-10', 75000),
(1005, 'BMW 3 Series', 'BMW', '2022-06-28', 38000),
(1006, 'Audi A4', 'Audi', '2022-07-12', 34000),
(1007, 'Mercedes-Benz C-Class', 'Mercedes-Benz', '2022-08-05', 48000),
(1008, 'Chevrolet Corvette', 'Chevrolet', '2022-09-22', 58000),
(1009, 'Nissan Altima', 'Nissan', '2022-10-18', 21000),
(1010, 'Hyundai Elantra', 'Hyundai', '2022-11-30', 19000),
(1011, 'Volvo S60', 'Volvo', '2022-12-25', 42000),
(1012, 'Mazda MX-5 Miata', 'Mazda', '2023-01-14', 28000),
(1013, 'Subaru WRX', 'Subaru', '2023-02-08', 33000),
(1014, 'Lexus ES', 'Lexus', '2023-03-20', 45000),
(1015, 'Kia Optima', 'Kia', '2023-04-05', 22000),
(1016, 'Toyota Corolla', 'Toyota', '2023-05-01', 19000),
(1017, 'Honda Accord', 'Honda', '2023-06-10', 24000),
(1018, 'Ford F-150', 'Ford', '2023-07-15', 32000),
(1019, 'Tesla Model 3', 'Tesla', '2023-08-20', 51000),
(1020, 'BMW 5 Series', 'BMW', '2023-09-25', 48000),
(1021, 'Audi Q5', 'Audi', '2023-10-30', 42000),
(1022, 'Mercedes-Benz E-Class', 'Mercedes', '2023-11-02', 57000),
(1023, 'Chevrolet Silverado', 'Chevrolet', '2023-12-05', 38000),
(1024, 'Nissan Rogue', 'Nissan', '2024-01-10', 25000),
(1025, 'Hyundai Sonata', 'Hyundai', '2024-02-15', 21000),
(1026, 'Volvo XC60', 'Volvo', '2024-03-20', 46000),
(1027, 'Mazda CX-5', 'Mazda', '2024-04-25', 27000),
(1028, 'Subaru Outback', 'Subaru', '2024-05-30', 30000),
(1029, 'Lexus RX', 'Lexus', '2024-06-05', 53000),
(1030, 'Kia Sorento', 'Kia', '2024-07-10', 26000);
select * from car_import;

INSERT INTO car_sales VALUES
(201, 1, 'Raj kadam', 'California', 1234567890, '2023-05-01', 27000),
(202, 2, 'Ganesh gurav', 'New York', 1987654321, '2023-06-10', 21000),
(203, 3, 'Rohit waje', 'Texas', 1357924680, '2023-07-15', 44000),
(204, 4, 'Shreyash sakpal', 'Florida', 1765432987, '2023-08-20', 78000),
(205, 5, 'Sejal bhekare', 'California', 1654329870, '2023-09-25', 36000),
(206, 6, 'Kapil ghag', 'New York', 1890765432, '2023-10-30', 32000),
(207, 7, 'Vishal rajbhar', 'Texas', 1209876543, '2023-11-02', 50000),
(208, 8, 'Sanket khamkar', 'Florida', 1324509876, '2023-12-05', 62000),
(209, 9, 'kalyani patel', 'California', 1789054321, '2024-01-10', 25000),
(210, 10, 'Priti yadav', 'New York', 1543210987, '2024-02-15', 23000),
(211, 11, 'Angali tripathi', 'Texas', 1908765432, '2024-03-20', 46000),
(212, 12, 'Arun ovhal', 'Florida', 1123456789, '2024-04-25', 31000),
(213, 13, 'Siddhesh bhekare', 'California', 1567890123, '2024-05-30', 37000),
(214, 14, 'Siddhay shetye  ', 'New York', 1432098765, '2024-06-05', 49000),
(215, 15, 'Manav sawardekar', 'Texas', 1976543210, '2024-07-10', 26000),
(216, 16, 'Rutik adekar', 'California', 1098765432, '2024-08-01', 21000),
(217, 17, 'Sonal patil', 'New York', 1876543210, '2024-09-10', 27000),
(218, 18, 'Amey shigwan', 'Texas', 1654321098, '2024-10-15', 34000),
(219, 19, 'Yash kasar', 'Florida', 1432109876, '2024-11-20', 58000),
(220, 20, 'Aditya chavan', 'California', 1209876543, '2024-12-25', 26000),
(221, 21, 'Sumeet sannak', 'New York', 1987654321, '2025-01-30', 32000),
(222, 22, 'Sarthak redij', 'Texas', 1765432109, '2025-02-05', 51000),
(223, 23, 'Vandesh chavan', 'Florida', 1543210987, '2025-03-10', 63000),
(224, 24, 'Yuvraj kadam', 'California', 1321098765, '2025-04-15', 24000),
(225, 25, 'Shantanu chavan', 'New York', 1098765432, '2025-05-20', 22000),
(226, 26, 'Afnan sabale', 'Texas', 1876543210, '2025-06-25', 42000),
(227, 27, 'Karina kadam', 'Floridaa', 1654321098, '2025-07-30', 29000),
(228, 28, 'Isha kadam', 'California', 1432109876, '2025-08-05', 33000),
(229, 29, 'Narendra sakpal', 'New York', 1209876543, '2025-09-10', 50000),
(230, 30, 'Anita kadam', 'Texas', 1987654321, '2025-10-15', 25000);

select * from car_sales;


#normal queries
#Total number of cars imported by each company:
select company_name, COUNT(*) as Total_Imports from car_import group by company_name; 

#Average purchase price of cars sold in California:
select avg(Purchase_price) as Average_Price_California from car_sales where state = 'California'; 

#Number of cars sold in each state:
select state, COUNT(*) as Cars_Sold from car_sales group by state;

#Customers who bought cars with a purchase price above $40,000:
select * from car_sales where Purchase_price > 40000; 

#Models imported before 2023:
select * from car_import where year(import_date) < 2023;

#Details of cars with a mileage greater than 30:
select * from car_desc where Mileage >50;

#Customers who purchased cars in 2024 and their contact numbers:
select customer_name, contact_no from car_sales where year(Purchase_date) = 2024; 

#Get the car models with their respective fuel types and mileages:
select Model_name, Fuel_type, Mileage from car_desc where mileage>90 or Fuel_type="electric" ; 

#Get the car models and their respective prices ordered by price in descending order:
select Model_name, Price from car_desc order by Price desc; 

#Find customers who bought cars from California and their purchase dates:
select customer_name, Purchase_date, state from car_sales where state = 'California'; 

#SUB 
#Details of cars sold with a purchase price above the average purchase price:
select * from car_sales where Purchase_price > (select avg(Purchase_price) from car_sales);

#Details of customers who purchased a Tesla:
select * from car_sales where c_id in (select car_id from car_desc where Model_name like 'Tesla%'); 

# Retrieve the details of customers who purchased cars with a horsepower greater than 300:
SELECT * FROM car_sales WHERE c_id IN (SELECT car_id FROM car_desc WHERE Horsepower > 300);  

# Display the import details for electric cars (Engine_type = 'Electric'):
SELECT * FROM car_import WHERE Model_type IN (SELECT Model_name FROM car_desc WHERE Engine_type = 'Electric'); 

# Retrieve details of cars sold, including customer information using subqueries:
SELECT customer_id, customer_name, contact_no, Purchase_date, Purchase_price,
(SELECT Model_name FROM car_desc WHERE car_id = cs.c_id) AS Model_name FROM car_sales cs;

# Retrieve the names of customers who purchased cars and the corresponding model names using subqueries:
SELECT customer_name, (SELECT Model_name FROM car_desc WHERE car_id = cs.c_id) AS Model_name FROM car_sales cs;



#JOIN 

#Inner Join to Retrieve Sales Information with Car Description: 
select cd.Model_name, cs.customer_name, cs.Purchase_date from car_desc cd inner join car_sales cs on cd.car_id = cs.c_id; 

#Join to Show Sales with Car Description and Imported Car Company:
select cs.customer_name, cd.Model_name, ci.company_name from car_sales cs inner join car_desc cd on cs.c_id = cd.car_id 
inner join car_import ci on cd.Model_name = ci.Model_type; 

#Join to Show Car Sales, Description, and Imported Car Details:
SELECT cs.customer_name, cd.Model_name, ci.company_name, ci.import_price from car_sales cs
inner join car_desc cd on cs.c_id = cd.car_id inner join car_import ci on cd.Model_name = ci.Model_type; 

#Join to Display Car Sales and Description with Imported Car Price:
select cd.Model_name, cs.customer_name, ci.import_price  from car_sales cs 
inner join car_desc cd on cs.c_id = cd.car_id inner join car_import ci on cd.Model_name = ci.Model_type; 

# Retrieve the names of customers who purchased cars and the corresponding model names:
SELECT cs.customer_name, cd.Model_name
FROM car_sales cs JOIN car_desc cd ON cs.c_id = cd.car_id;