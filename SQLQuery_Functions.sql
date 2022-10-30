alter function getProd(@id int)
returns table
as 
return (select * from ProductsP where ProductId = @id)


select * from getProd(106)