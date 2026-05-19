use sakila;
show tables;
select * from sales;

select product , sum(product) from sales group by product having sum(amount)>20000 ;
select * from sales ;

select sales_person , count(amount)  from sales group by sales_person  having count(amount) > 8;

select sales_person , product , count(amount) from sales group by sales_person , product order by sales_person;
select * from payment;

select year(payment_date) , month(payment_date) , sum(amount) 
from payment group by year(payment_date) ,  month(payment_date);



