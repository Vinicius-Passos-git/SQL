/* Group by e Having*/

select d.name , count(e.emp_id) as num_employees
from department as d inner join employee as e
on d.dept_id = e.dept_id
group by d.name;

/* usando having */
select d.name , count(e.emp_id) as num_employees
from department as d inner join employee as e
on d.dept_id = e.dept_id
group by d.name
having count(e.emp_id) > 2;

select * from employee;
select * from department;