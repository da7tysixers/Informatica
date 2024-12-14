--create user core identified by core;
grant connect, resource to core;


create table core.t_employees as select * from hr.employees where 1= 2;

desc core.t_employees;

select * from core.t_employees;