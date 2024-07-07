create table emp2
as select * from employees;

drop table emp2 
drop table dept2

create table dept2
as select * from departments;

ALTER TABLE emp2
MODIFY employee_id PRIMARY KEY ;

alter table dept2
modify department_id primary key;

alter table dept2
dropt primary key SYS_C007499 cascade;

ALTER TABLE emp2
ADD CONSTRAINT mgr_id_fk FOREIGN KEY (manager_id) REFERENCES emp2(employee_id);

alter table dept2
add constraint dept_id_fk FOREIGN KEY (department_id) REFERENCES dept2(department_id);

alter table emp2
drop constraint mgr_id_fk;

alter table dept2
drop constraint dept_id_fk cascade;


select last_name, department_name
from emp2 natural join dept2;



describe emp2;
describe dept2












