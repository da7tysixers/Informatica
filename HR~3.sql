create table test(
    col1 number(8),
    col2 number(8)
    );
    
insert into test
(col1,col2)
values(2,3);
savepoint a;

insert into test
(col1,col2)
values(4,5);
savepoint b;

insert into test
(col1,col2)
values(6,7);
savepoint c;

insert into test
(col1,col2)
values(8,9);
savepoint d;

rollback;

select * from test;