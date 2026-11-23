select * from orders

-- Create order id to customer id table
CREATE TABLE cust_id_dict AS
SELECT DISTINCT o_id, o_cust_id
FROM orders;

select * from cust_id_dict

select * from order_payments

-- left join so that all rows in payment table has customer id
CREATE TABLE payment_custid AS
SELECT o.*, c.o_cust_id as p_cust_id
FROM order_payments as o
left JOIN cust_id_dict as c
ON o.op_order_id = c.o_id;

select * from payment_custid

select * from orders

-- join payment table to fact table
CREATE TABLE fact_payment AS
SELECT *
FROM payment_custid as p
FULL OUTER JOIN orders as o
ON p.p_unique_o_id = o.o_unique_o_id;

select * from fact_payment