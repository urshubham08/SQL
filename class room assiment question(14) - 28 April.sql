

-- -- -----e--------------------------------------------------------------------------------------------------------------------------------------------------------------- 
-- -- QUESTION 1. Find employees with salary between 65,000 and 85,000
-- select emp_id , first_name 
-- from employees 
-- where salary >= 65000 and salary <= 85000;

-- -- -------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
-- -- QUESTION 2. List employees in the IT or Finance department

-- select first_name , last_name
--  from employees 
--  where department = 'IT' or department =  'finance' ;
-- -- 2nd method 
-- select emp_id,first_name,last_name,department,job_title from employees where department in('it','finance');

-- -- --------------------------------------------------------------------------------------------------------------------------
-- -- QUESTION 3. Find employees whose last name ends with 'son' 
-- select emp_id , first_name , last_name 
-- from employees
-- where last_name like '%son'; 

-- -- ---------------------------------------------------------------------------------------------------------------------------
-- -- QUESTION 4. Find active employees (is_active = 'y' ;) in the IT department

-- select emp_id , firsT_Name , last_name , job_title , salary 
-- from employees
-- where 
-- is_active = 'y';


-- -- ------------------------------------------------------------------------------------------------------------------------
-- -- QUESTION 5. Display first_name in UPPERCASE and last_name in lowercase for Finance employees
-- select emp_id  ,  upper(first_name)  as first_name_upper , lower(last_name) as last_name_lower , salary
-- from employees
-- where department = 'finance';

-- -- ------------------------------------------------------------------------------------------------------------------------
-- -- QUESTION 6. Find employees whose first name has more than 4 characters
-- select emp_id , first_name , length(first_name) as name_lenth , department 
-- from employees 
-- where length(first_name) > 5 ; 

-- -- -------------------------------------------------------------------------------------------------------------------------
-- -- QUESTION 7. Show full name and its character length for Marketing employees
-- select emp_id,concat(first_name,' ',last_name) as full_name,
-- length(concat(first_name,' ',last_name)) as full_name_length
-- ,department from employees where department='marketing';

-- -- ------------------------------------------------------------------------------------------------------------------------
-- -- QUESSTION 8. Display hire year and years-ago for each Finance employee 
-- select * from employees;
-- select emp_id,first_name,last_name,hire_date,year(hire_date) as hire_year
-- from employees where department='finance';

-- -- ------------------------------------------------------------------------------------------------------------------------------
-- -- QUESTION 9. Q9. Show each IT employee&#39;s salary rounded to nearest 10,000 and its remainder
-- select emp_id,first_name,last_name,
-- round(salary,-4) as rounded_salary,
-- salary%10000 as salary_remainder 
-- from employees where department='it';

-- -- --------------------------------------------------------------------------------------------------------------------------
-- -- QUESTION 10.Find employees using an Outlook email address
-- select emp_id,first_name,last_name,email from employees where email like '%outlook.com';

-- -- --------------------------------------------------------------------------------------------------------------
-- -- QUESTION 11. Find employees hired more than 2,000 days ago (from April 28, 2026)
-- select emp_id,first_name,last_name,hire_date,datediff(now(),hire_date) as days_employed from employees
-- where datediff(now(),hire_date)>2000  ;

-- -- --------------------------------------------------------------------------------------------------------------------
-- -- QUESTION 12. Extract the email username (part before &#39;@&#39;) for all HR employees
-- select emp_id, first_name,last_name,email,
-- substr(email,1,instr(email,'@')-1) from employees where department='hr';

-- -- ------------------------------------------------------------------------------------------------------------------
-- -- QUESTION 13 Find non-IT/Finance employees with salary outside the 60,000–80,000 range
-- SELECT *
-- FROM employees
-- WHERE department NOT IN ('IT', 'Finance')
-- AND (salary < 60000 OR salary > 80000);

-- -- -----------------------------------------------------------------------------------------------------------------------
-- -- QUESTION 14 Extract and uppercase the email username; show only those with username length > 6 characters 
-- SELECT 
-- emp_id , upper(first_name) , last_name ,email , 