-- create and select the database
DROP DATABASE IF EXISTS textbooks_db;
CREATE DATABASE textbooks_db;
USE textbooks_db;

-- create the Product table
CREATE TABLE Products (
  ID                INT                PRIMARY KEY  AUTO_INCREMENT,
  Textbook          VARCHAR(26)        NOT NULL     UNIQUE,
  Price             DECIMAL(10,2)      NOT NULL
  
);


CREATE TABLE Buyer Information (
  ID                INT                PRIMARY KEY  AUTO_INCREMENT,
  Textbook          VARCHAR(26)        NOT NULL,
  Buyer             VARCHAR(26)        NOT NULL
  
);

CREATE TABLE Invoice (
  ID                INT               PRIMARY KEY  AUTO_INCREMENT,
  Textbook          VARCHAR(26)       NOT NULL,
  Order Number      VARCHAR(10)       NOT NULL
  
);

-- insert some rows into the accounts table
INSERT INTO PRODUCTS (
(1, 'Fluid Dynamics', '250.00'),
(2, 'Thermodynamics', '300.00'),
(3, 'Calculus 3', '185.00');

-- insert some rows into the Product table
INSERT INTO Buyer Information
(1, 'Thermodynamics', 'Rachael Baumann'),
(2, 'Thermodynamics', 'John Faconer'),
(3, 'Caluclus 3', 'Neil Hendren');

-- insert some rows into the Product table
INSERT INTO INVOICE
(1, 'Fluid Dynamics', '123'),
(2, 'Thermodynamics', '456'),
(3, 'Fluid Dynamics', '789');


-- create a user and grant privileges to that user
GRANT SELECT, INSERT, DELETE, UPDATE
ON textbooks_db.*
TO textbooks_db@localhost
IDENTIFIED BY 'sesame';
