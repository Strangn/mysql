-- create and select the database
DROP DATABASE IF EXISTS amm;
CREATE DATABASE amm;
USE amm;

-- create the Product table
CREATE TABLE InvItem (
  ID			INT            PRIMARY KEY  AUTO_INCREMENT,
  OrderNumber   VARCHAR(25)    NOT NULL     UNIQUE,
  CustomerName	VARCHAR(50)    NOT NULL,
  OrderDate		Date           NOT NULL,
  Total         Decimal(10,2)  NOT NULL,
  InvoiceID     INT            NOT NULL,
  ProductID     INT            NOT NULL,
  Quantity      INT            NOT NULL
);

INSERT INTO InvItem VALUES
(1, 'SB001', 'Sean Blessing', '2018-03-08', '832.50', '1', '7', '5'),
(2, 'SB001', 'Sean Blessing', '2018-03-08', '832.50', '2', '1', '10');


-- create a user and grant privileges to that user
GRANT SELECT, INSERT, DELETE, UPDATE
ON amm.*
TO amm_user@localhost
IDENTIFIED BY 'sesame';
