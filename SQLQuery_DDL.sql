create table Person(
Id int,
fname varchar(40),
city varchar(20)
)

--select * from Person
--add column in existing table
alter table Person add  Email varchar(40)


-- table name.old col name , new col name
sp_rename 'Person.city' ,'City'

select * from Person

-- modify the column size or data type
alter table person alter column City varchar(40)

sp_help person


-- delete the column
alter table person drop column City


-- drop the table or DB

--drop table person
--drop database PracticeDB


select * from Person