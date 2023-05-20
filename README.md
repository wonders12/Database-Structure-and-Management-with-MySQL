# Database-Structure-and-Management-with-MySQL

### Overview
In our increasingly data-centric world, I've come to realize the importance of efficient data management. To delve deeper into this realm, I decided to embark on a personal project exploring database structures and management using MySQL. This journey allowed me to uncover the fascinating concepts and best practices that make MySQL an indispensable tool for businesses of all sizes. Join me as I share my discoveries and experiences, and together, let's unlock the power of MySQL for effective data organization and retrieval.

### Why this project?
- Delving into the relational model and understanding the core elements of tables, rows, and columns.
- Discovering the significance of primary keys, foreign keys, and the relationships that bind them.
- Unraveling the various data types supported by MySQL, from numeric and string to date and time.
- Unleashing the power of SQL statements like SELECT, INSERT, UPDATE, and DELETE to shape and manipulate my data.
- Embarking on the quest for efficient query optimization techniques to retrieve information swiftly.
- Creating, altering, and dropping tables using DDL statements, giving shape to my data domain.

### Problems & Answers
Before we set sail on our exciting journey of database exploration with MySQL, there's a crucial step we must take to ensure smooth navigation. We need to create a database to serve as our foundation—a digital harbor where we'll dock our schemas and tables, and where our data adventures will unfold. So, grab your captain's hat, and let's create our database named "project_db" to set the stage for our thrilling expedition!

  ![image](https://github.com/wonders12/Database-Structure-and-Management-with-MySQL/assets/50216723/fb4f0e6b-fa0f-497d-aa8a-a2f52fc136a9)

With our database created, we've secured our digital haven for our data-driven escapades. It's time to chart new territories, create captivating schemas, and populate them with data that will ignite our imagination. But remember, in this vast sea of possibilities, a solid database foundation is the compass that will guide us towards success.

So, buckle up, fellow adventurer, and let's set sail on this thrilling MySQL journey. With our "project_db" database securely anchored, we're ready to dive into the world of schema creation, table design, and the captivating art of inserting values. Let the data-driven adventure begin!

##### Steps:
- create customers table with data.
- create table for bookings record with data.
- create restaurant's courses table with data.

#### Business case scenerio to solve:
- Create SQL statement to print all records from Bookings table for the following bookings dates using the BETWEEN operator: 2021-11-11, 2021-11-12 and 2021-11-13. 
- Create a JOIN SQL statement on the Customers and Bookings tables. The statement must print the customers full names and related bookings IDs from the date 2021-11-11.
- Create a SQL statement to print the bookings dates from Bookings table. The statement must show the total number of bookings placed on each of the printed dates using the GROUP BY BookingDate. 
- Create a SQL REPLACE statement that updates the cost of the Kabsa course from $17.00 to $20.00. The expected output result should be the same as that shown in the following screenshot:
- Create a new table called "DeliveryAddress" in the project_db database with the following columns and constraints: ID INT PRIMARY KEY, Address VARCHAR(255) NOT NULL, Type NOT NULL DEFAULT "Private" and CustomerID INT NOT NULL FOREIGN KEY referencing CustomerID in the Customers table
- Create a SQL statement that adds a new column called 'Ingredients' to the Courses table.
- Create a SQL statement with a subquery that prints the full names of all customers who made bookings in the restaurant on the following date: 2021-11-11.
- Create the "BookingsView" virtual table to print all bookings IDs, bookings dates and the number of guests for bookings made in the restaurant before 2021-11-13 and where number of guests is larger than 3.
- Create a stored procedure called 'GetBookingsData'. The procedure must contain one date parameter called "InputDate". This parameter retrieves all data from the Bookings table based on the user input of the date.
- Create a SQL SELECT query using appropriate MySQL string function to list "Booking Details" including booking ID, booking date and number of guests. The data must be listed in the same format as the following example:

#### Solution to the above business case scenerio using MySQL query and Result
*CASE 1:* 

![image](https://github.com/wonders12/Database-Structure-and-Management-with-MySQL/assets/50216723/1a9bbe71-8f24-4d39-91a4-5c239130609d)

*CASE 2:*

![image](https://github.com/wonders12/Database-Structure-and-Management-with-MySQL/assets/50216723/489a2da5-7487-4248-b333-e91248fd4492)

*CASE 3:*

![image](https://github.com/wonders12/Database-Structure-and-Management-with-MySQL/assets/50216723/1617b105-8730-4b6d-a6e6-8e15670f18e3)

*CASE 4:*

![image](https://github.com/wonders12/Database-Structure-and-Management-with-MySQL/assets/50216723/b9cc692d-b13b-4c8b-b0ce-9b480095a4e6)

*CASE 5:*

![image](https://github.com/wonders12/Database-Structure-and-Management-with-MySQL/assets/50216723/cdfffe3a-ae67-4713-9d9c-fc5297d541c1)


*CASE 6:*

![image](https://github.com/wonders12/Database-Structure-and-Management-with-MySQL/assets/50216723/c5438ee5-cd6d-4204-8a92-340e84831058)

*CASE 7:*

![image](https://github.com/wonders12/Database-Structure-and-Management-with-MySQL/assets/50216723/756f2f7a-2087-4133-a394-0e8bea098002)


*CASE 8:*

![image](https://github.com/wonders12/Database-Structure-and-Management-with-MySQL/assets/50216723/6a1f8631-9d75-49a0-b327-df0d29bb0d87)

*CASE 9:*

![image](https://github.com/wonders12/Database-Structure-and-Management-with-MySQL/assets/50216723/356b13bc-5299-403b-9d34-4899363feb6e)


*CASE 10:*





### Conclusion
Embarking on this personal project has been an enlightening and rewarding journey into the realm of database structures and management using MySQL. I have witnessed the transformative power of efficient data organization, retrieval, and manipulation firsthand. As I share my experiences and insights, I hope to inspire others to embark on their own personal journeys, unlocking the potential of MySQL to tame the vast seas of data and chart their own course towards success. Together, let's harness the power of MySQL and embark on a data-driven adventure like no other.
