desc customer;

ALTER TABLE customer DROP COLUMN city;

ALTER TABLE customer RENAME COLUMN mobile_no TO mobile;

desc customer;

ALTER TABLE customer MODIFY
    cust_id NUMBER(10);

ALTER TABLE customer MODIFY
    mobile NUMBER(15);

ROLLBACK;

CREATE TABLE customer_bkp
    AS
        SELECT
            *
        FROM
            customer;

SELECT
    *
FROM
    customer_bkp;

TRUNCATE TABLE customer;

ALTER TABLE customer MODIFY
    mobile varchar2(15);
    
alter table customer
modify cust_id number(9);

insert into customer(select * from customer_bkp);

commit;

select * from customer;


insert into customer
values(100003,'Dilip','+91-9090909090',to_date('08/04/2000','mm/dd/yyyy'),'arun@gmail.com','India');

commit;

delete from customer_bkp
where cust_id = 100000;

select * from customer_bkp;

drop table customer_bkp;

show tables;

alter table customer
rename column mobile to mobile_no;

alter table customer
rename column dob to date_of_birth;

desc customer;

rename customer to customer_1;

select * from customer;

rename customer_1 to customer;




