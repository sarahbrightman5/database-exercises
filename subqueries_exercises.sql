USE employees;
SELECT hire_date, emp_no FROM employees WHERE emp_no = '101010';

SELECT CONCAT(first_name, ' ', last_name) AS Name  FROM employees
WHERE hire_date IN (SELECT hire_date FROM employees
                                   WHERE hire_date= '1990-10-22' );

SELECT title FROM titles
WHERE emp_no IN (SELECT emp_no FROM employees
WHERE first_name IN
                (SELECT first_name FROM employees WHERE first_name ='Aamod'));

SELECT first_name , last_name , gender FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager
                 WHERE emp_no IN
                       (SELECT emp_no FROM employees WHERE gender ='F')AND to_date LIKE '9%');
