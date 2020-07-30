/* USANDO AGRUPAMENTEO E AGRAGAÇÃO MAX, MIN, AVG, SUM, COUNT */
USE bank;
 --------------------------------------------------------------------------------
SELECT open_emp_id,
COUNT(*) AS How_Many
FROM account
GROUP BY open_emp_id
HAVING COUNT(*)>4;
 --------------------------------------------------------------------------------
SELECT MAX(avail_balance) AS max_balance,
	   MIN(avail_balance) AS min_balance,
	   AVG(avail_balance) AS avg_balance,
	   SUM(avail_balance) AS total_balance,
	   COUNT(*) AS num_balance
FROM account
WHERE product_cd = 'CHK';
 --------------------------------------------------------------------------------
SELECT product_cd,
	   MAX(avail_balance) AS max_balance,
	   MIN (avail_balance) AS min_balance,
	   AVG(avail_balance) AS avg_balance,
	   SUM(avail_balance) AS total_balance,
	   COUNT(*) AS num_balance
FROM account
GROUP BY product_cd;
 --------------------------------------------------------------------------------
SELECT COUNT(DISTINCT open_emp_id)
FROM account;
 --------------------------------------------------------------------------------
 SELECT SUM(pending_balance - avail_balance) AS max_uncleared
 FROM account;
 --------------------------------------------------------------------------------
 SELECT product_cd,
		SUM(avail_balance) AS prod_balance
FROM account
GROUP BY product_cd;
 --------------------------------------------------------------------------------
 SELECT product_cd, 
		open_branch_id,
		SUM(avail_balance) AS total_balance
FROM account
GROUP BY product_cd,
	     open_branch_id
ORDER BY product_cd;
--------------------------------------------------------------------------------
SELECT YEAR(start_date) AS year,
	   COUNT(*) AS How_Many
FROM employee
GROUP BY YEAR(start_date);
--------------------------------------------------------------------------------
SELECT product_cd,
	   open_branch_id,
	   SUM(avail_balance) AS total_balance
FROM account
GROUP BY product_cd,
		 open_branch_id
WITH ROLLUP;
--------------------------------------------------------------------------------
SELECT product_cd,
	   open_branch_id,
	   SUM(avail_balance) AS total_balance
FROM account
GROUP BY CUBEproduct_cd,
		 open_branch_id
WITH CUBE;
--------------------------------------------------------------------------------
SELECT product_cd,
	   SUM(avail_balance) AS pord_balance
FROM account
GROUP BY product_cd
HAVING MIN(avail_balance) >=100
AND MAX(avail_balance) <10000;