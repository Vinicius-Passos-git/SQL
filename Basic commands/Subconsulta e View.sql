/* Subconsulta e View */

/* subconsulta é um consulta dentro de outra consulta */

select e.emp_id, e.fname, e.lname
from (select emp_id, fname, lname, start_date, title
from employee) e;

/* a view comporta como uma tabela virtual. */

create view employee_vw as
select emp_id, fname, lname,
year(start_date) start_year
from employee;

/*consultando a view criada */
select emp_id, start_year
from employee_vw;