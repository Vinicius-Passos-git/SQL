/* Apresenta todas as tabelas do banco que está sendo utilizadao */
select * from sys.tables;

/*Verifica as informações da contrução da tabela */
sp_help department;
--ou
sp_columns department;

/* Verifica todos os dados salvos na tabela */
select * from employee;
select * from information_schema.columns where table_name = 'account'


/*Consulta de algumas colunas da tabela com uma condição especifica */
select emp_id, fname, lname
from employee
where lname = 'Parker';

