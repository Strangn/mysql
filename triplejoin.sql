-- inner join
select * from invoice i
    inner join lineitem l
   on i.id = l.invoiceid;

select * from product p
    inner join lineitem l
   on p.id = l.id;
   
-- 3 tables select
SELECT OrderNumber, CustomerName, Orderdate,
		code, description, listprice as 'unit price'
    from lineitem l
    inner join invoice i	
		on l.invoiceid = i.id
	inner join product p
		on l.productid = p.id;