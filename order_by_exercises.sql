use employees;

SHOW TABLES;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya',  'Maya') ORDER BY first_name , last_name;

SELECT * FROM employees WHERE last_name LIKE 'e%';

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya',  'Maya')
                          AND gender ='M' ;

SELECT * FROM employees WHERE last_name LIKE 'e%' OR  last_name LIKE '%e' ORDER BY emp_no;

SELECT * FROM employees WHERE last_name LIKE 'e%' AND  last_name LIKE '%e' ;

SELECT * FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya',  'Maya') ORDER BY last_name , first_name;
