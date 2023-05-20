--- create database for the project
CREATE DATABASE project_db;

--- create customers table
CREATE TABLE IF NOT EXISTS customers 
(  
	customer_id INT NOT NULL PRIMARY KEY,  
	full_name VARCHAR(100) NOT NULL,  
	phone_number INT NOT NULL
);  
	

--- insert value into the customer table
INSERT INTO customers
VALUES 
(1, "Vanessa McCarthy", 0757536370),
(2, "Marcos Romero", 0757536371), 
(3, "Hiroki Yamane", 0757536373), 
(4, "Anna Iversen", 0757536374), 
(5, "Diana Pinto", 0757536375),    
(6, "Altay Ayhan", 0757636376),    
(7, "Jane Murphy", 0753536377),    
(8, "Laurina Delgado", 0754536378), 
(9, "Mike Edwards", 0757236379),    
(10, "Karl Pederson", 0757936310);

--- create bookings table
CREATE TABLE IF NOT EXISTS bookings 
(  
	booking_id INT,  
	booking_date DATE,
	table_number INT, 
	number_of_guests INT,
	CustomerID INT);
	
--- insert booking records into booking table
INSERT INTO bookings
VALUES 
(10, '2021-11-10', 7, 5, 1),  
(11, '2021-11-10', 5, 2, 2), 
(12, '2021-11-10', 3, 2, 4), 
(13, '2021-11-11', 2, 5, 5), 
(14, '2021-11-11', 5, 2, 6), 
(15, '2021-11-11', 3, 2, 7), 
(16, '2021-11-11', 3, 5, 1), 
(17, '2021-11-12', 5, 2, 2),  
(18, '2021-11-12', 3, 2, 4), 
(19, '2021-11-13', 7, 5, 6), 
(20, '2021-11-14', 5, 2, 3),
(21, '2021-11-14', 3, 2, 4);

--- create restaurant's courses table with value
CREATE TABLE IF NOT EXISTS courses 
(  
	course_name VARCHAR(255) PRIMARY KEY,  
	cost Decimal(4,2));
	
INSERT INTO courses
VALUES
("Greek salad", 15.50),
("Bean soup", 12.25), 
("Pizza", 15.00), 
("Carbonara", 12.50),
("Kabasa", 17.00), 
("Shwarma", 11.30);

--- CASE 1: Create SQL statement to print all records from Bookings table for the following bookings dates using the BETWEEN operator: 2021-11-11, 2021-11-12 and 2021-11-13. 
SELECT * 
FROM bookings 
WHERE booking_date BETWEEN "2021-11-11" AND "2021-11-13" ; 

--- CASE 2: Create a JOIN SQL statement on the Customers and Bookings tables. The statement must print the customers full names and related bookings IDs from the date 2021-11-11.
SELECT c.full_name, b.booking_id 
FROM customers c, bookings b 
WHERE c.customer_id = b.CustomerID AND  	   b.booking_date = "2021-11-11" ; 

--- CASE 3: Create a SQL statement to print the bookings dates from Bookings table. The statement must show the total number of bookings placed on each of the printed dates using the GROUP BY BookingDate.  
SELECT booking_date, COUNT(*) no_of_booking_per_day 
FROM bookings GROUP BY 1;  

--- CASE 4: Create a SQL REPLACE statement that updates the cost of the Kabsa course from $17.00 to $20.00. 
REPLACE INTO courses 
VALUES ("Kabasa", 20);  

--- CASE 5: Create a new table called "DeliveryAddress" in the project_db database with the following columns and constraints: ID INT PRIMARY KEY, Address VARCHAR(255) NOT NULL, Type NOT NULL DEFAULT "Private" and CustomerID INT NOT NULL FOREIGN KEY referencing CustomerID in the Customers table  
CREATE TABLE delivery_address  
(   
	ID INT PRIMARY KEY,   
	address VARCHAR(255) NOT NULL,   
	type VARCHAR(50) NOT NULL DEFAULT "Private",   
	customer_id INT NOT NULL,   
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)  
);   

--- CASE 6: Create a SQL statement that adds a new column called 'Ingredients' to the Courses table. 
ALTER TABLE courses 
ADD COLUMN ingredients VARCHAR(255);  


--- CASE 7: Create a SQL statement with a subquery that prints the full names of all customers who made bookings in the restaurant on the following date: 2021-11-11.
SELECT c.full_name 
FROM customers c, bookings b1 
WHERE c.customer_id = b1.CustomerID 
AND b1.booking_date = ALL (
			   SELECT b2.booking_date 
			   FROM bookings b2 
			   WHERE b2.booking_date = "2021-11-11"
			) ; 

						
--- CASE 8: Create the "BookingsView" virtual table to print all bookings IDs, bookings dates and the number of guests for bookings made in the restaurant before 2021-11-13 and where number of guests is larger than 3.
CREATE VIEW bookings_view AS 
SELECT booking_id, booking_date, number_of_guests 
FROM bookings 
WHERE booking_date < "2021-11-13" AND number_of_guests > 3 ;  

--- CASE 9: Create a stored procedure called 'GetBookingsData'. The procedure must contain one date parameter called "InputDate". This parameter retrieves all data from the Bookings table based on the user input of the date. After executing the query, call the "GetBookingsData" with '2021-11-13' as the input date passed to the stored procedure to show all bookings made on that date.
CREATE PROCEDURE get_bookings_data(input_date DATE)
SELECT *FROM bookings
WHERE booking_date = input_date; 

--- CASE 10: Create a SQL SELECT query using appropriate MySQL string function to list "Booking Details" including booking ID, booking date and number of guests.
SELECT CONCAT("ID: ",booking_id,","," Date: ",booking_date,","," Number of guests: ",number_of_guests) booking_detail
FROM bookings;  
