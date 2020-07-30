/* Inner Join */

select employee.emp_id, employee.fname, employee.lname,
department.name, department.dept_id
from employee inner join department
on employee.dept_id = department.dept_id;