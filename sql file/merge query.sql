
select *
from orders
inner join
select op_index, op_order_id
from order_payments

select * from order_payments

SELECT o.*, p.op_index
FROM orders as o
left JOIN order_payments as p
ON o.o_id = p.op_order_id;

CREATE TABLE orders_payment AS
SELECT o.*, p.op_index
FROM orders as o
LEFT JOIN order_payments as p
ON o.o_id = p.op_order_id;

select * from order_reviews

select * from orders_payment

CREATE TABLE orders_payment_review AS
SELECT o.*, r.r_index
FROM orders_payment as o
LEFT JOIN order_reviews as r
ON o.o_id = r.r_order_id;

select * from orders_payment_review

select count(distinct(o_id))
from orders_payment_review

select count(distinct(op_order_id))
from order_payments
