/* CONSULTAS */
/* clausulas de consultas: select, from, where, group by, having (filtra grupos indesejados), order by */ 

/*toda a tabela */
select * from employee;

/*dados especificos da tabela*/
select fname, lname 
from employee;

/*consulta com função nativa */
select emp_id,
'ACTIVE',
emp_id * 3.14159,
upper(lname)
from employee;


