-- create and select the database
DROP DATABASE IF EXISTS bank_db;
CREATE DATABASE bank_db;
USE bank_db;

-- create the Product table
CREATE TABLE Accounts (
  ID            INT                   PRIMARY KEY  AUTO_INCREMENT,
  Account_holder    VARCHAR(26)        NOT NULL     UNIQUE,
  Balance           DECIMAL(10,2)      NOT NULL,
  Fee               DECIMAL(10,2)        NOT NULL
);

CREATE TABLE Transactions (
  BankID            INT                PRIMARY KEY  AUTO_INCREMENT,
  Amount            DECIMAL(10,2)      NOT NULL,
  txn_type          VARCHAR(10)   NOT NULL,
  account_ID        INT      NOT NULL,
  Foreign Key (Account_ID) references Accounts(ID)
);



INSERT INTO Accounts VALUES
(1, 'Rachael Baumann', '8888.00', '250.00'),
(2, 'Michael Page', '5444.00', '175.00'),
(3, 'Angie Snyder', '3333.00', '88.00'),
(4, 'Robert Mahoney', '3322.00', '88.00');

-- insert some rows into the Product table
INSERT INTO Transactions VALUES
(1, '500.00', 'Deposit', '3'),
(2, '-200.00', 'Withdrawl', '4'),
(3, '200.00', 'Deposit', '4'),
(4, '248.00', 'Deposit', '1');

-- create a user and grant privileges to that user
GRANT SELECT, INSERT, DELETE, UPDATE
ON bank_db.*
TO bank_db@localhost
IDENTIFIED BY 'sesame';