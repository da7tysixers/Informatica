CREATE TABLE product (
    prod_id   NUMBER,
    prod_name VARCHAR(30)
);

CREATE TABLE customer (
    cust_id   NUMBER(8),
    cust_name VARCHAR2(100),
    mobile_no NUMBER(10),
    dob       DATE,
    city      VARCHAR2(100),
    email_id  VARCHAR2(100)
);

SELECT
    *
FROM
    customer;

desc customer;

INSERT INTO customer (
    cust_id,
    cust_name,
    mobile_no,
    dob,
    city,
    email_id
) VALUES (
    100000,
    'Arun',
    9090909090,
    TO_DATE('8/04/2000', 'mm/dd/yyyy'),
    'Chennai',
    'arun@gmail.com'
);



insert into customer
values(100001,'John',90909030,to_date('12/24/1986','mm/dd/yyyy'),'Bangaluru','john@gmail.com');

commit;

insert into customer
values(100002,'Geon',null,to_date('12/24/1985','mm/dd/yyyy'),'Delhi','Geon@gmail.com');


update customer
set mobile_no = 9090909030
where cust_id = 100001;

--
alter table customer
add country varchar2(50);

update customer
set country = 'India';
