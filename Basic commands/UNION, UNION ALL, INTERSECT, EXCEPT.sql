/* UNION ALL (TODOS OS VALORES), UNION (RETIRA DUPLICATAS), INTERSECT, EXCEPT */

USE bank;

/* UNION ALL */

SELECT 'IND' /*CRIA UMA COLUNA COM TODAS AS VARIAVEIS IGUAL A 'IND' */ 
		type_cd,
		cust_id,
		lname
FROM individual
UNION ALL
SELECT 'BUS' /*CRIA UMA COLUNA COM TODAS AS VARIAVEIS IGUAL A 'BUS' */ 
		type_cd,
		cust_id,
		name
FROM business;


SELECT emp_id
FROM  employee
WHERE assigned_branch_id = 2
AND (title = 'Teller' OR title = 'Head Teller')
UNION ALL
SELECT DISTINCT open_emp_id
FROM  account
WHERE open_branch_id = 2;

/* UNION*/

SELECT emp_id
FROM  employee
WHERE assigned_branch_id = 2
AND (title = 'Teller' OR title = 'Head Teller')
UNION
SELECT DISTINCT open_emp_id
FROM  account
WHERE open_branch_id = 2;

/* INTERSECT */

SELECT emp_id
FROM  employee
WHERE assigned_branch_id = 2
AND (title = 'Teller' OR title = 'Head Teller')
INTERSECT
SELECT DISTINCT open_emp_id
FROM  account
WHERE open_branch_id = 2;

/* EXCEPT */

SELECT emp_id
FROM  employee
WHERE assigned_branch_id = 2
AND (title = 'Teller' OR title = 'Head Teller')
EXCEPT
SELECT DISTINCT open_emp_id
FROM  account
WHERE open_branch_id = 2;