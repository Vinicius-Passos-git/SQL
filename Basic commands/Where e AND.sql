/* Clausula Where */

select emp_id, fname, lname, start_date, title
from employee
where title = 'Head Teller';

/* Where com AND */

select emp_id, fname, lname, start_date, title
from employee
where title = 'Head Teller' 
and start_date > '2001-01-01';


/* Where com OR */

select emp_id, fname, lname, start_date, title
from employee
where title = 'Head Teller' 
or start_date > '2001-01-01';


/* Where com AND e OR */

select emp_id, fname, lname, start_date, title
from employee
where (title = 'Head Teller' and start_date > '2001-01-01') 
or (title = 'Teller' and start_date > '2003-01-01');