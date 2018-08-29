SELECT *
	FROM product
--	WHERE productid = 5
  WHERE listprice = 57.50
	AND code = 'java';
    
select * from product
	WHERE ListPrice < 55;
    
select * from product 
  order by description desc; 
  
  select max(ListPrice) from product;
  
  select count(*) from product
    where listprice = 57.50;