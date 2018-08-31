INSERT INTO  accounts VALUES
(99, 'Donald Glover', 7373738, 40);

INSERT INTO accounts  (ID, Account_Holder, Balance, Fee)
  Values (20, 'Hank Aaron', 12120, 9999);
  
INSERT INTO accounts Values
(666, 'Jason Giambi', 4040404, 10);

Update accounts
	Set ID = 66
    where ID = 666;
    
Delete from accounts 
	where id = 50;
    
INSERT INTO accounts (fee, account_holder, id, balance)
	VAlues (80, 'Andrew Wanksik', 30, -20);
    
INSERT INTO accounts Values
(852, 'Kieth Sweat', 100001, 90);

UPDATE accounts 
	Set account_holder = 'Wanksik Andrew'
	where id = 30;
    
UPDATE accounts 
	set fee = 900
    where balance < 10000;
    
UPDATe accounts
	set fee = 1
    where fee > 333; 
    
UPDATE accounts
	set fee = 5050505
    where account_holder = 'Hank Aaron';
    
delete from accounts
	     where id = 52;
         
insert into accounts values
(45, 'Colonel Mustard', 76465, 901);

insert into accounts values
(49, 'Homer Glover', 787, 99);
