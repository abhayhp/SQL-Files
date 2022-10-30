create table Person(
Id int,
fname varchar(20),
city varchar(20)
)

--- add column in existing table ---

alter table Person add Email varchar(30)

select * from Person

sp_rename 'Person.city', 'City'