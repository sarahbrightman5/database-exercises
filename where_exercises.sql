use employees;

SHOW TABLES;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya',  'Maya');

SELECT * FROM employees WHERE last_name LIKE 'e%';

SELECT * FROM employees WHERE last_name LIKE '%q%';


SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya',  'Maya')
                                    AND gender ='M' ;

SELECT * FROM employees WHERE last_name LIKE 'e%' OR  last_name LIKE '%e' ;

SELECT * FROM employees WHERE last_name LIKE 'e%' AND  last_name LIKE '%e' ;

SELECT * FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';
