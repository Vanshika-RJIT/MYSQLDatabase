select * from orders o  
join customers c on c.customer_id = o.customer_id where order_date IN ('2017-07-05','2017-08-25');

-- Create an index named "idx_name" on the "customer_name" column in the "customers" table.
CREATE INDEX idx_name
ON customers (customer_name); 

select * from customers where customers.customer_name='Vanshika Sikarwar';