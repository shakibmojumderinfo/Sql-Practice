chapter 3 page 3 Task 1

CREATE TABLE dept
(dept_id number(7) CONSTRAINT department_id_pk PRIMARY KEY,
dept_name varchar2(25));

DESCRIBE dept;

CREATE SEQUENCE dept_id_seq
START WITH 200
MAXVALUE 1000
INCREMENT BY 10;

INSERT INTO dept 
values (dept_id_seq.nextval, 'Education');

INSERT INTO dept 
values (dept_id_seq.nextval, 'Cloud Computing');

SELECT dept_id_seq.currval
from dual;

  select *
 from user_sequences
 where sequence_name = 'DEPT_ID_SEQ';
 
 SELECT sequence_name, max_value, increment_by, last_number
 from user_sequences;
 
 CREATE SYNONYM emp1
 FOR employees;

SELECT *
FROM user_synonyms;

DROP SYNONYM emp1;

CREATE INDEX dept_name_idx 
ON dept('Education');







chapter 4 from activity guide
task 1 

CREATE VIEW employees_vu 
AS SELECT employee_id, last_name Employee, department_id
FROM employees;

task 3
SELECT employee, department_id
FROM employees_vu;

task 4
CREATE VIEW dept50 AS
SELECT employee_id empno, last_name employee, department_id deptno
FROM employees
WHERE department_id = 80;

task 5
describe dept50;

task 6

UPDATE dept50
SET deptno = 50
WHERE employee = 'Abel';

task 8

select view_name
from user_views;

CREATE TABLE student (
    student_id NUMBER(05) PRIMARY KEY,
    first_name  varchar(30) NOT NULL,
    last_name  varchar(25)
    );
    
INSERT INTO student(student_id, first_name, last_name)
values (01, 'Jayed', 'Khan');

CREATE TABLE enrollments (
    enroll_id NUMBER(05) PRIMARY KEY,
    student_id NUMBER,
    course_id number,
    CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES student(student_id)
    );
    

commit

select first_name,last_name, student_id
from student

select *
from enrollments


 
 
 
 