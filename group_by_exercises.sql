use employees;

SELECT DISTINCT title FROM titles ;

SELECT DISTINCT last_name , first_name FROM employees
WHERE last_name LIKE 'e%' AND  last_name LIKE '%e';

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';

SELECT COUNT(last_name), last_name FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

SELECT count(*),gender FROM employees WHERE first_name IN ('Irena', 'Vidya',  'Maya') GROUP BY gender;
WW