create table Customers(Id int,
name varchar(20),
age int,
Country varchar(20) default 'India',
City varchar(20),
PostalCode int,
)

create table Persons(Id int,
name varchar(20),
age int,
Country varchar(20) default 'India',
City varchar(20),
PostalCode int,
)


insert into Customers values
(01,'Anshul', 19, 'India', 'Kullu', 175126),
(02, 'Anil', 19, 'India', 'Bhuntar', 175125),
(03, 'Arpit',22, 'India', 'Shillihar', 175123),
(04, 'Rishi', 23, 'India', 'Mashgaun', 175127),
(05,'Sahil', 24, 'India', 'Kullu', 175121),
(06,'Sanjana', 23, 'India', 'Diyaar', 175120)

select * from Customers

insert into Customers values
(07,'Robert', 19, 'Canada', 'Toronto', 888970),
(08,'Anshul', 19, 'Namibia', 'Sindrel', 445678)

insert into Customers values
(09,'Kelly', 19, 'England', 'London', 223456),
(10,'Shelly', 19, 'England', 'London', 223456)

insert into Customers values
(11,'Zlatan', 20, 'Germany', 'Berlin', 676780),
(12,'Pogba', 21, 'Germany', 'Berlin', 676780)

insert into Customers values
(13,'Mbappe', 23, 'Germany', 'Berlin', null)

insert into Customers values
(14,'Felix', 20, 'Norway', 'Arendal', 111345),
(15,'Christine', 24, 'Norway', 'Arendal', 111345)

insert into Customers values
(14,'Felix', 20, 'Austria', 'Raspaun', 111345)

insert into Customers values
(15,'Marzia', 20, 'Austri', 'Raspaun', 111345)


insert into Customers values
(16,'Khamzat', 20, 'Norway', 'Allenhigh', 111345)

insert into ProductsP values
(108, 'Hammer earbuds', 'unisex', 100)

alter table ProductsP add Price int
update ProductsP set Price = 1500 where ProductId in (102, 105, 107, 101)
update ProductsP set Price = 1200 where ProductId in (103, 104)


--1. Write a statement that will select the City column from the Customers table
select City from Customers

--2. Select all the different values from the Country column in the Customers table.
select distinct Country from Customers

--3. Select all records where the City column has the value "London"
select * from Customers where City = 'London'

--4. Use the NOT keyword to select all records where City is NOT "Berlin".
select * from Customers where not City = 'Berlin' 

--5. Select all records where the CustomerID column has the value 23.
select * from Customers where Id = 23

--6. Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
select * from Customers where City = 'London' and PostalCode = 121110

--7. Select all records where the City column has the value 'Berlin' or 'London'
select * from Customers where City in ('Berlin', 'London') 

--8. Select all records from the Customers table, sort the result alphabetically by the column City.
select * from Customers order by City

--9. Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from Customers order by City desc

--10. Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select * from Customers order by Country, City 

--11. Select all records from the Customers where the PostalCode column is empty.
select * from Customers where PostalCode IS null 

--12. Select all records from the Customers where the PostalCode column is NOT empty.
select * from Customers where PostalCode IS Not null 

--13. Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
update Customers set City  = 'Oslo' where Country  = 'Norway' 

--14. Delete all the records from the Customers table where the Country value is 'Norway'.
delete from Customers where Country = 'Norway'

--15. Use the MIN function to select the record with the smallest value of the Price column.
select * from ProductsP where Price = (select MIN(Price) from ProductsP)

--16. Use an SQL function to select the record with the highest value of the Price column.
select * from ProductsP where Price = (select max(Price) from ProductsP)

--17. Use the correct function to return the number of records that have the Price value set to 20
select count(*) from ProductsP where Price = 20

--18 Use an SQL function to calculate the average price of all products.
select avg(Price) as AVG_Price from ProductsP

--19 Use an SQL function to calculate the sum of all the Price column values in the Products table
select Sum(Price) as sum_of_all_Price from ProductsP

--20 Select all records where the value of the City column starts with the letter "a".
select * from Customers where City like 'a%'

--21 Select all records where the value of the City column ends with the letter "a".
select * from Customers where City like '%a'

--22 Select all records where the value of the City column contains the letter "a".
select * from Customers where City like '%a%'

--23 Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select * from Customers where City like 'k%u'

--24 Select all records where the value of the City column does NOT start with the letter "a".
select * from Customers where City not like 'a%'

--25 Select all records where the second letter of the City is an "a".
select * from Customers where City like '_a%'

--26 Select all records where the first letter of the City is an "a" or a "c" or an "s".
select * from Customers where City like '[acs]%'

--27 Select all records where the first letter of the City starts with anything from an "a" to an "f".
select * from Customers where City like '[a-f]%'

--28 Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select * from Customers where City not like '[acf]%'

--29 Use the IN operator to select all the records where the Country is either "Norway" or "France".
select * from Customers where Country in ('Norway' , 'France' )

--30 Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select * from Customers where Country not in ('Norway' , 'France' )

--31 Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select * from ProductsP where Price between 10 and 20 

--32 Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select * from ProductsP where Price not between 10 and 20 

--33 Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
select * from ProductsP where Prod_name between 'Geitost' and 'Pavlova' 

--34 When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
select Id, Name , Age, Country, City, PostalCode as Pno from Customers

--35 When displaying the Customers table, refer to the table as Consumers instead of Customers.
SELECT * FROM Customers AS Consumers;

--36 List the number of customers in each country.
select Country, count(Id) from Customers group by Country

--37 List the number of customers in each country, ordered by the country with the most customers first.
select Country, count(Id) from Customers group by Country order by count(Id) desc

--38 Write the correct SQL statement to create a new database called testDB.
create database testDB

--39 Write the correct SQL statement to delete a database named testDB
drop database testDB

--40 Add a column of type DATE called Birthday in Persons table
alter table Persons add Birthday Date

--41 Delete the column Birthday from the Persons table
alter table Persons drop column Birthday









select * from Persons
select * FROM ProductsP
select * FROM Customers
