create table Product_audit( 
audit_id int primary key identity(1,1),
prod_id int,
dt varchar(20),
info varchar(15)
)






create trigger Product_table_insert
on ProductsP for insert
as begin
declare @pro_id int
select @pro_id = ProductId from inserted
insert into Product_audit values(@pro_id, cast(getdate() as varchar(20)), 'inserted') 
end



alter trigger Prod_table_delete
on ProductsP for delete
as begin
declare @pro_id int
select @pro_id = ProductId from deleted
insert into Product_audit values(@pro_id, cast( getdate() as varchar(20) ), 'deleted')
end

insert into ProductsP values( 107, 'Hammer NC Headphones', 'unisex')

delete from ProductsP where ProductId = 106





select * from ProductsP

select * from Product_audit