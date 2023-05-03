use employees;

SHOW TABLES;



SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya',  'Maya') ORDER BY first_name , last_name;

SELECT * FROM employees WHERE last_name LIKE 'e%';

SELECT * FROM employees WHERE last_name LIKE '%q%';


SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya',  'Maya')
                          AND gender ='M' ;

SELECT CONCAT(first_name, ' ',last_name) FROM employees WHERE last_name LIKE 'e%' OR  last_name LIKE '%e' ORDER BY emp_no;

SELECT *
FROM employees
WHERE year(birth_date) BETWEEN 1800 AND 2200
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 2000
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 2000
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY hire_date DESC;

SELECT *,DATEDIFF(NOW(),hire_date)/365
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 2000
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT * FROM employees WHERE last_name LIKE 'e%' AND  last_name LIKE '%e' ;

SELECT * FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya',  'Maya') ORDER BY last_name , first_name;
