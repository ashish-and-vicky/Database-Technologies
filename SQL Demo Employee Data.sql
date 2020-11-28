DROP TABLE IF EXISTS employees;
CREATE TABLE employees(
  employee_id int(11) NOT NULL,
  first_Name varchar(50) NOT NULL,
  last_Name varchar(50) NOT NULL,
  email varchar(100) NOT NULL,
  office_Code varchar(10) NOT NULL,
  PRIMARY KEY (employee_id)
 );

insert  into employees(employee_id,first_Name,last_Name,email,office_Code) values 

(1002,'Murphy','Diane','dmurphy@classicmodelcars.com','1'),
(1056,'Patterson','Mary','mpatterso@classicmodelcars.com','1'),
(1076,'Firrelli','Jeff','jfirrelli@classicmodelcars.com','1'),
(1088,'Patterson','William','wpatterson@classicmodelcars.com','6'),
(1102,'Bondur','Gerard','gbondur@classicmodelcars.com','4'),
(1143,'Bow','Anthony','abow@classicmodelcars.com','1'),
(1165,'Jennings','Leslie','ljennings@classicmodelcars.com','1'),
(1166,'Thompson','Leslie','lthompson@classicmodelcars.com','1'),
(1188,'Firrelli','Julie','jfirrelli@classicmodelcars.com','2'),
(1216,'Patterson','Steve','spatterson@classicmodelcars.com','2'),
(1286,'Tseng','Foon Yue','ftseng@classicmodelcars.com','3'),
(1323,'Vanauf','George','gvanauf@classicmodelcars.com','3'),
(1337,'Bondur','Loui','lbondur@classicmodelcars.com','4'),
(1370,'Hernandez','Gerard','ghernande@classicmodelcars.com','4'),
(1401,'Castillo','Pamela','pcastillo@classicmodelcars.com','4'),
(1501,'Bott','Larry','lbott@classicmodelcars.com','7'),
(1504,'Jones','Barry','bjones@classicmodelcars.com','7'),
(1611,'Fixter','Andy','afixter@classicmodelcars.com','6'),
(1612,'Marsh','Peter','pmarsh@classicmodelcars.com','6'),
(1619,'King','Tom','tking@classicmodelcars.com','6'),
(1621,'Nishi','Mami','mnishi@classicmodelcars.com','5'),
(1625,'Kato','Yoshimi','ykato@classicmodelcars.com','5'),
(1702,'Gerard','Martin','mgerard@classicmodelcars.com','4');


DROP TABLE IF EXISTS offices;
CREATE TABLE offices (
  office_Code varchar(10) NOT NULL,
  city varchar(50) NOT NULL,
  phone varchar(50) NOT NULL,
  state varchar(50) DEFAULT NULL,
  country varchar(50) NOT NULL,
    employee_id int(10) NOT NULL,
  PRIMARY KEY (`office_Code`),
  FOREIGN KEY (  employee_id) REFERENCES employees(  employee_id)
);

insert  into offices(office_Code,city,phone,state,country,  employee_id) values 

('1','San Francisco','+1 650 219 4782','CA','USA',1401),
('2','Boston','+1 215 837 0825','MA','USA',1165),
('3','NYC','+1 212 555 3000','NY','USA',1002),
('4','Paris','+33 14 723 4404',NULL,'France',1621),
('5','Tokyo','+81 33 224 5000','Chiyoda-Ku','Japan',1323),
('6','Sydney','+61 2 9264 2451',NULL,'Australia',1088),
('7','London','+44 20 7877 2041',NULL,'UK',1216);