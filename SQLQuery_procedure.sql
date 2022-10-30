create procedure Pro_name
as begin
select * from ProductsP
end

exec Pro_name


create proc Prod_insert(
@id int,
@Prod_name varchar(20),
@scope varchar(20)) as begin
insert into ProductsP values(@id,@Prod_name, @scope)
end


exec Prod_insert
@id = 106,
@Prod_name = 'Hammer earphones',
@scope = 'unisex'

create procedure fetch_product as begin
select * from ProductsP where ProductId  = 106
end
