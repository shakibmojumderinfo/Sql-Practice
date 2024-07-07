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
    

From Activity Guide Chapter 7 

Task 1

SELECT location_id, street_address, city, state_province, country_name
FROM locations  NATURAL JOIN countries

TASK 2

SELECT last_name, department_id, department_name
FROM employees 
join departments
using (department_id);

TASK 3 

SELECT e.last_name, e.job_id, d.department_id, d.department_name
from employees e join departments d
ON e.department_id = d.department_id
join locations l 
ON d.location_id = l.location_id
WHERE l.city = 'Toronto';

TASK 4

SELECT e.last_name "Employee", e.employee_id "Emp#",
m.last_name "Manager", m.employee_id Mgr#
FROM employees e join employees m
on e.employee_id = m.manager_id;

Task 5

SELECT w.last_name "Employee", w.employee_id "Emp#",
m.last_name "Manager", m.employee_id Mgr#
FROM employees w 
LEFT OUTER JOIN employees m
ON w.manager_id = m.employee_id
order by 2

TASK 6 

SELECT w.department_id department, w.last_name employee, m.last_name colleague
from employees w join employees m
ON (w.department_id = m.department_id)
WHERE w.employee_id <> m.employee_id


task 7

SELECT e.last_name, e.job_id, d.department_name,
        e.salary, j.grade_level
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
join job_grades j
ON (e.salary BETWEEN j.lowest_sal AND j.highest_sal);


task 8
SELECT e.last_name, e.hire_date 
FROM employees e JOIN employees davies 
ON (davies.last_name = 'Davies') 
WHERE davies.hire_date < e.hire_date; 

task 9

SELECT w.last_name, w.hire_date, m.last_name, m.hire_date 
FROM employees w JOIN employees m 
ON (w.manager_id = m.employee_id) 
WHERE w.hire_date < m.hire_date; 













 
 
 