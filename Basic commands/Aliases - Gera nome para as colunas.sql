/* consulta com aliases (usado para modificar o nome da coluna) */
/*pode utilizar o comandos 'as' ou não para gerar o nome da coluna */

select emp_id,
'ACTIVE' as status,
emp_id * 3.14159 as empid_x_pi,
upper(lname) as last_name_upper
from employee;

