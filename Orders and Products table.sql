select * from customers where city regexp '^g|e$';
select * from customers where city regexp '[a-z]r|a$';

CREATE TABLE Products (
  product_id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  quantity_in_stock int(11) NOT NULL,
  unit_price decimal(4,2) NOT NULL,
  PRIMARY KEY (product_id)
);


CREATE TABLE if not exists Orders (
  order_id int(11) NOT NULL AUTO_INCREMENT,
  customer_id int(11) NOT NULL,
  order_date date NOT NULL,
  PRIMARY KEY (order_id)
);

INSERT INTO  Orders VALUES (3,2,'2017-08-25');
INSERT INTO  Orders VALUES (6,3,'2018-11-18');
INSERT INTO  Orders VALUES (7,4,'2018-09-22');
INSERT INTO  Orders VALUES (9,1,'2017-07-05');

INSERT INTO Products VALUES (1,'Foam Dinner Plate',70,1.21);
INSERT INTO Products VALUES (2,'Pork - Bacon,back Peameal',49,4.65);
INSERT INTO Products VALUES (3,'Lettuce - Romaine, Heart',38,3.35);
INSERT INTO Products VALUES (4,'Brocolinni - Gaylan, Chinese',90,4.53);
INSERT INTO Products VALUES (5,'Sauce - Ranch Dressing',94,1.63);


select * from products where unit_price > 3;
select * from orders where order_id IN (3,9);
select * from orders where day(order_date) >'05';
select * from orders where order_date between '2017-08-25' and '2018-09-25';
select * from products where name regexp '[a-e]l|e$';


