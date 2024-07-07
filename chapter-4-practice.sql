CREATE OR REPLACE VIEW empvu80
(ID_NUMBER, NAME, SAL, DEPT_ID) AS 
SELECT employee_id, first_name || ' ' || last_name, salary, department_id
FROM employees
WHERE department_id = 80;

CREATE VIEW emp_view AS 
SELECT employee_id, first_name, last_name, department_id
FROM employees
WHERE department_id = 10;

SELECT *
FROM emp_view;

DELETE FROM emp_view
WHERE employee_id = ;
DELETE FROM emp_view
WHERE employee_id = 200;  --error

SELECT * FROM USER_UPDATABLE_COLUMNS 
WHERE TABLE_NAME = 'EMP_VIEW';


SELECT employee_id, first_name, last_name, d.department_name,c.country_name
from employees e JOIN departments d
ON e.department_id = d.department_id
JOIN countries c
ON c.country_id = d.country_id;

SELECT 
    e.employee_id, 
    e.first_name, 
    e.last_name, 
    d.department_name, 
    c.country_name
FROM 
    employees e
JOIN 
    departments d ON e.department_id = d.department_id
JOIN 
    locations l ON d.location_id = l.location_id
JOIN 
    countries c ON l.country_id = c.country_id;



select * from locations;
select * from countries;
select * from employees;
select * from departments;

