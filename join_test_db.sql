CREATE DATABASE join_test_db;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

# ALTER TABLE users ADD COLUMN role_id INT UNSIGNED;
# ALTER TABLE users ADD CONSTRAINT fk_users_role_id FOREIGN KEY (role_id) REFERENCES roles(id);

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null);


INSERT INTO users (name, email, role_id) VALUES
                                             ('sarah','sarah@insert.com',4),
                                             ('robby','robby@insert.com',3),
                                             ('namjoon','namjoon@insert.com',1),
                                             ('sunshine','sunshine@insert.com',null);

SELECT users.name, roles.name FROM users JOIN roles ON users.role_id = roles.id;

USE employees;

SELECT dept_name AS 'Department name', CONCAT(first_name,' ',last_name)AS 'Department manager'
FROM departments d JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e on e.emp_no = dm.emp_no;

SELECT dept_name AS 'Department name', CONCAT(first_name,' ',last_name)AS 'Department manager'
FROM departments d JOIN dept_manager dm ON d.dept_no = dm.dept_no
                   JOIN employees e on e.emp_no = dm.emp_no
            WHERE to_date LIKE '%9'
            AND gender ='F'
            ORDER BY dept_name;

SELECT title, COUNT(title) AS Total FROM titles t
    JOIN dept_emp de on t.emp_no = de.emp_no
    JOIN departments d on d.dept_no = de.dept_no
WHERE dept_name = 'customer service'
    AND t.to_date LIKE '9%'
    AND de.to_date LIKE '9%'
    GROUP BY title;

SELECT dept_name AS 'Department Name',
       CONCAT(first_name,' ',last_name)AS 'Department manager',
       salary AS Salary
FROM departments d
    JOIN dept_manager dm on d.dept_no = dm.dept_no
    JOIN employees e on e.emp_no = dm.emp_no
    JOIN salaries s on e.emp_no = s.emp_no
WHERE s.to_date LIKE '9%'
    AND dm.to_date LIKE '9%'
ORDER BY dept_name;

