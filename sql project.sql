use mysqldb;
select *from offices;
select*from employees;
desc offices;
--------------------  question-1----------------------------
--  (Q)  Return the employees who work in the offices located in the USA.
select concat(firstname,'',lastname) as fullname,country from employees 
 join offices 
using(officecode)
where country ="usa"
;
-----------------------  question -2 ----------------------------------------------------------------------------------------------------------------------
-- (Q) Return the customer who has the highest payment
select * from customers;
select * from payments;
select distinct(customername) ,max(amount) over(partition by customernumber) as "max salary" from customers
join payments using(customernumber);


---------------------- 3 -------------------------------------------------------------------------------------------------------------------------
-- (Q) Find customers whose payments are greater than the average payment using a subquery
select *from customers;
select *from payments;
select customername,amount from customers 
join payments using(customernumber)
where amount >(select avg(amount) from payments);



