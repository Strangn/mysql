-- create and select the database
DROP DATABASE IF EXISTS rollercoaster_db;
CREATE DATABASE Rollercoaster_db;
USE Rollercoaster_db;

-- create the Product table
CREATE TABLE RollerCoaster (
  ID                    INT                PRIMARY KEY     AUTO_INCREMENT,
  Roller_coaster        VARCHAR(10)        NOT NULL,
  speed_MPH             VARCHAR(10)        NOT NULL,
  SpeedRank             INT  (10)          NOT NULL,
);

CREATE TABLE Locations (
  ID            INT                      PRIMARY KEY      AUTO_INCREMENT,
  City          VARCHAR(26)              NOT NULL          Unique,
  State         VARCHAR(20)              NOT NULL          Unique,
  SpeedRank     INT(10)                  NOT NULL,
  Foreign Key (ID) references (ID) 
  
);



INSERT INTO RollerCoaster VALUES
(1, 'Kinda Ka', '128', '1'),
(2, 'Top Thrill Dragster', '120', '2'),
(3, 'Superman', '100', '3'),
(4, 'Fury 365', '95', '4');

-- insert some rows into the Product table
INSERT INTO Locations VALUES
(1, 'Charlotte', 'NC', '4'),
(2, 'Jackson', 'NJ', '1'),
(3, 'Sandusky', 'OH', '2'),
(4, 'Valencia', 'CA', '3');

-- create a user and grant privileges to that user
GRANT SELECT, INSERT, DELETE, UPDATE
ON rollercoaster_db.*
TO rollercoaster_db@localhost
IDENTIFIED BY 'sesame';