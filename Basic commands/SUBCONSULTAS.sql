/* SUBCONSULTAS */

USE bank;

SELECT account_id, 
	   product_cd, 
	   cust_id, 
	   avail_balance
FROM account
WHERE account_id =	(SELECT MAX(account_id) FROM account);

/* SUBCONSULTA NÃO CORRELATA */

SELECT account_id,
	   product_cd,
	   cust_id,
	   avail_balance
FROM account
WHERE open_emp_id <> (SELECT e.emp_id
FROM employee AS e
INNER JOIN branch AS b
ON e.assigned_branch_id = b.branch_id
WHERE e.title = 'Head Teller' AND b.city = 'Woburn');


/* SUBCONSULTA NÃO CORRELATA COM ERRO PROPOSITAL*/
/* O COMANDO IN RESOLVE ESSE PROBLEMA */

SELECT account_id,
	   product_cd,
	   cust_id,
	   avail_balance
FROM account
WHERE open_emp_id <> (SELECT e.emp_id
FROM employee AS e
INNER JOIN branch AS b
ON e.assigned_branch_id = b.branch_id
WHERE e.title = 'Teller' AND b.city = 'Woburn');


/* SUBCONSULTA COM IN */

SELECT emp_id, 
	   fname,
	   lname,
	   title
FROM employee
WHERE emp_id IN(SELECT superior_emp_id FROM employee);

/* SUBCONSULTA COM NOT IN */

SELECT emp_id, 
	   fname,
	   lname,
	   title
FROM employee
WHERE emp_id NOT IN(
SELECT superior_emp_id 
FROM employee
WHERE superior_emp_id IS NOT NULL);

/*SUBCONSULTA COM ALL (A CONTA MAIOR QUE SERÁ O PARAMENTRO*/

SELECT account_id,
	   cust_id,
	   product_cd,
	   avail_balance
FROM account
WHERE avail_balance < ALL (SELECT a.avail_balance
FROM account AS a
INNER JOIN individual AS i
ON a.cust_id = i.cust_id
WHERE i.fname = 'Frank' AND i.lname = 'Tucker');


/*SUBCONSULTA COM ANY (AMBOS VALORES DA CONTA DE FRANK, SERÃO PARAMETROS*/

SELECT account_id,
	   cust_id,
	   product_cd,
	   avail_balance
FROM account
WHERE avail_balance > ANY (SELECT a.avail_balance
FROM account AS a
INNER JOIN individual AS i
ON a.cust_id = i.cust_id
WHERE i.fname = 'Frank' AND i.lname = 'Tucker');

/*SUBCONSULTA DE MULTIPLAS COLUNAS */

SELECT account_id,
	   product_cd,
	   cust_id
FROM account
WHERE (open_branch_id = (SELECT branch_id
FROM branch
WHERE name = 'Woburn Branch')
AND open_emp_id IN (SELECT emp_id
FROM employee
WHERE title = 'Teller'));