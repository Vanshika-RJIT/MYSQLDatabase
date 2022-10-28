 create database mysqldb;
 use mysqldb;
 CREATE TABLE if not exists customers ( customer_id int NOT NULL,
 customer_name char(50) NOT NULL,
 address char(50),
  city char(50),
  state char(25),
  zip_code char(10),
 CONSTRAINT customers_pk PRIMARY KEY (customer_id)
 );
INSERT INTO customers values(1,"Vanshika Sikarwar","F-22 Krishna Colony","Gwalior","MP","474001");
INSERT INTO customers values(2,"Vaisa Sikarwar","Ras Vihar Colony","Patna","UP","473001");
INSERT INTO customers values(3,"Vaibhika Sikarwar","Basant Vihar Colony","Gwalior","MP","474501");
INSERT INTO customers values(4,"Vanu Sikarwar","M.D. Nagar","Gwalior","MP","474061");
-- INSERT INTO customers values(5,"Vanari Sikarwar","NayanGanj","Gwalior","MP","474801");
select * from customers;