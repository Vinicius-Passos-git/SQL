/* FILTRO COM O NULL */

USE BANK;

/* NULL */
SELECT EMP_ID,
	   FNAME,
	   LNAME,
	   SUPERIOR_EMP_ID
FROM EMPLOYEE
WHERE SUPERIOR_EMP_ID IS NULL;

/* NOT NULL*/
SELECT EMP_ID,
	   FNAME,
	   LNAME,
	   SUPERIOR_EMP_ID
FROM EMPLOYEE
WHERE SUPERIOR_EMP_ID IS NOT NULL;

/* IS NULL COM CONDI��O */
SELECT EMP_ID,
	   FNAME,
	   LNAME,
	   SUPERIOR_EMP_ID
FROM EMPLOYEE
WHERE SUPERIOR_EMP_ID !=6 OR superior_emp_id IS NULL;