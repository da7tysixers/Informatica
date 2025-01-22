create table t_employees;

select * from t_employees;

truncate table t_employees;


select * from t_employees_dept;
create table t_employees_loc (
    employee_id number(6),
    first_name varchar2(20),
    last_name varchar2(25),
    email varchar2(25),
    phone_number varchar2(20),
    hire_date date,
    job_id varchar2(10),
    salary number(8),
    commission_pct number(2),
    manager_id number(6),
    department_id number(4),
    department_name varchar2(30),
    location_id number(8),
    street_address varchar2(50),
    city varchar2(50),
    country_id varchar2(50)
    )

desc t_employees_loc;

Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
 select distinct city from station
 where mod(id, 2) = 0

 ---------------------------------------------
 Case statement for unit testing Informatica

 select employee_id, salary from core.employees
minus
select employee_id, salary+(salary*0.1) from hr.employees;

select employee_id, salary from core.employees
minus
select employee_id, 
case when salary <= 10000 then salary+(salary*0.2)
else salary+(salary*0.1)  end salary from hr.employees



SELECT employee_id, salary from core.employees
minus
select employee_id,
case when salary <= 5000 then salary+(salary*0.3)
when salary > 5000 and salary <= 10000 then salary+(salary*0.2)
else salary+(salary*0.1) end salary from hr.employees;
