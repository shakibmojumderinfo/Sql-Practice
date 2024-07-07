create sequence my_seq
START WITH 100
increment BY 5
MAXVALUE 1000
MINVALUE 50
CYCLE
CACHE 10;

CREATE sequence dept_deptid_seq
start with 290 
increment by 10
maxvalue 9999
nocache
nocycle

select my_seq.nextval
from dual;  --genarate next value

select my_seq.currval
from dual; --return current value


create TABLE emps
(id number default my_seq.nextval,
emp_name varchar2(255));

insert into emps(emp_name)
values ('Leo Messi');

select * from emps;

insert into departments(department_id, department_name, location_id)
values ( my_seq.nextval, 'support', 2500);  --erorr

select *
from departments

alter sequence dept_deptid_seq
                      increment by 5 --thats what we can change
                      maxvalue 999999
                      cycle;
  
 describe user_sequences;
 
 select *
 from user_sequences;
 
 
synonym ?

why we give access synonim table name 

create synonym hr_emp
for employees

SELECT * FROM hr_emp

select *
from user_synonyms;


select department_name
from departments


index create 2 type automaticaly and manualy

create index emp_job_id_index 
on employees (UPPER(job_id));

create table emps_03
(emp_id number constraint emp_id_pk primary key using index
(create index emp_id_idx on
            emps_03(emp_id)),
emp_name varchar2(255));

select *
from user_indexes
where table_name = 'EMPS_03';

select * from employees
where upper(job_id) = 'IT_PROG';


--Create index

CREATE INDEX e_last_name_idx
ON employees(last_name);

CREATE TABLE new_emp
(employee_id NUMBER (6)
                PRIMARY KEY USING INDEX
                (CREATE INDEX emp_id_idx 
                ON new_emp(employee_id)),
first_name varchar(20),
last_name varchar(25));

describe new_emp;















