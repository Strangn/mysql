INSERT INTO Accounts VALUES
  (50, 'Donald Trump', '77778885.00', '0');

 INSERT INTO Accounts (Account_holder, Balance, Fee)
  VALUES ('Dave Grohl', 2450000, 0);
  
  INSERT INTO Accounts (Fee, Balance, Account_holder)
    VALUES (0, 500, 'CHER');  

UPDATE accounts
   SET Account_holder = 'Donald J Trump'
   Where ID = 50;
   
SELECT * FROM accounts 
	where balance <= 100000;
    
update accounts
	set fee = 100
	where balance <= 100000;
    
delete from accounts
	where id = 50;
    
select * from accounts
	where id in (51, 52);
    
select * from accounts 
	where account_holder like '% J %';
    

    




