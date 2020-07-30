/* Aliases para tabelas */

select e.emp_id, e.fname, e.lname,
d.name, d.dept_id
from employee e inner join department d
on e.dept_id = d.dept_id;

/* Aliases utilizando as */

select e.emp_id, e.fname, e.lname,
d.name, d.dept_id
from employee as e inner join department as d
on e.dept_id = d.dept_id;