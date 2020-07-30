/* Order by */

select open_emp_id, product_cd
from account
order by open_emp_id;

/* mais de um condição */
select open_emp_id, product_cd
from account
order by open_emp_id, product_cd;

/* order by descendente */
select account_id, product_cd, open_date, avail_balance
from account
order by avail_balance desc;

/* ordenação por meio de expressão */
/* ordenar dados dos clientes pelos 3 últimos digitos de identificação */
select cust_id, cust_type_cd, state, fed_id
from customer
order by right(fed_id, 3); /*right é função nativa fazendo referencias ao lado direito do campo. 
							Nesse caso será os tres ultimos digitos a partir do lado direito do compo fed_id */

/* ordenando pelo numero das colunas */
select emp_id, title, start_date, fname, lname
from employee
order by 2, 5;