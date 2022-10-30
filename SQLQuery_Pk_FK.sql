--Not Null:

alter table Person(
Id int,
fname varchar(40)not null,
Email varchar(40) not null
)


alter table person alter column Email varchar(40) not null
alter table person alter column Id varchar(10) not null



--Unique :

alter table Person(
Id int unique,
fname varchar(40)not null,
Email varchar(40) not null
)



alter table Person add constraint un_Id unique(Id,Email)

alter table Person drop constraint un_Id


sp_help Person


-- Primary kay :


create table Person(
Id int primary key,
fname varchar(40)not null,
Email varchar(40) not null
)

create table Person(
Id int,
fname varchar(40)not null,
Email varchar(40) not null,
constraint pk_Person primary key(Id)
)

create table Persons(
Id int primary key,
fname varchar(40)not null,
Email varchar(40) not null
)


alter table Person add constraint pk_person primary key(Id,Email)
alter table Person add constraint pk_person primary key(Id)

alter table person alter column Email varchar(40) not null
alter table person alter column Id varchar(40) not null
alter table person alter column fname varchar(40) not null




select * from Person



-- Foreign Key

create table Orders(
OrderId int,
OrderNo int,
Id int,
constraint pk_orders primary key (OrderId),
constraint fk_person_orders foreign key(Id) references Persons(Id)
)

alter table orders add 
constraint fk_person_ foreign key(Id) references Person(Id)



-- Default :
alter table person add Country varchar(40) default 'India'


--truncate
truncate table person



select * from person

select * from Orders