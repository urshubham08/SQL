
-- nun  -  nothinng 
select sum(salary)  ,count(salary) from employees;

select sum(salary) from employees where department = 'IT'; -- it walo salary ka sum 
SELECT 
    SUM(salary), COUNT(salary)
FROM
    employees
WHERE
    department = 'finance'; -- finace me kitne log kaam kr rhe hai 

-- ---------------------------------------------------------------------------------------------------
-- grouping group by  se karte hai --- is a statment which is use to group siilar value 
--                                              similiar value ka group me bna dete hai
--  we can perform calculation on that group ex -- department  

select department from employees group by department ; --  group me baaat deta hai (disting pr koi calculation nhi lagti )

select department , count(department) from employees group by department ; -- grouping ke baad row couunt krega 

select department , sum(salary) from employees group by department ;  -- sum off all group 

select department , count(department) , sum(salary) , avg(salary)  from employees group by department ;  -- calculation krke de dega 

select job_title , sum(salary) from employees group by  job_title; -- all job_title  ki salary ka sum kr dega 

select * from payment;






-- 1 from thia pYMENT TABLE FINA=D THE TOTAL AMMOUNT nn the avg ammount
--     find the numner of transiction done by countumer id 1
--     find the total transication done cous 2 , 5
--    

use sakila ;
select sum(amount)  , avg(amount) from paymemt;


select * from payment ;

select count(payment_id) from payment where customer_id = 1;

select count(payment_id) from payment where customer_id in (2,5);
 
 
 
 -- Assiment 29 / 04 / 2026 

select * from payment ;
-- -----------------------------------------------------------------------------------------------------------
-- QUESTION .1  Total tranction done each customer_id  
select  count(payment_id) , customer_id 
from payment 
group by customer_id ;

-- -----------------------------------------------------------------------------------------------------------
-- QUESTION .2 find now also get total transaction and  total amount spend after the customer id 3 
select count(payment_id) as total_transaction , sum(amount) as total_spand_amount 
from payment 
where customer_id > 3 ;

-- -----------------------------------------------------------------------------------------------------------
-- QUESTION .3 find the occurence for each ammount value 
select amount , count(amount) as occurrence
from payment 
group by amount;


-- -----------------------------------------------------------------------------------------------------------
-- QUESTION .4  find the total ammount given inn your table 
select sum(amount) as total_amount 
from payment ;


-- -----------------------------------------------------------------------------------------------------------
-- QUESTION .5 get  the avg ammount spend by each staff 
select staff_id , avg(amount) 
from payment
group by staff_id ;

-- -----------------------------------------------------------------------------------------------------------
-- QUESTION .6 Get the total amount spend each month 
select extract( month from payment_date ) , sum(amount)
from payment 
group by extract( month from payment_date ) ; 









-- wrong code select payment_date , sum(amount) , sum(extract(month from payment_date)) from payment group by payment_date ; 
SELECT EXTRACT(MONTH FROM payment_date) AS month,  SUM(amount) AS total_amount
FROM payment
GROUP BY EXTRACT(MONTH FROM payment_date);


-- -----------------------------------------------------------------------------------------------------------
-- QUESTION .7  find the avg ammount spend in the year  in 2005 
SELECT AVG(amount) AS avg_amount
FROM payment
WHERE YEAR(payment_date) = 2005;

use sakila;
select avg(amount) from payment where year(payment_date)=2005;


 
 






