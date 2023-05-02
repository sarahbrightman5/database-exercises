CREATE DATABASE testing123;

CREATE DATABASE IF NOT EXISTS testing123;

SHOW DATABASES;

USE testing123;

DROP DATABASE testing123;

DROP DATABASE IF EXISTS testing123;

CREATE DATABASE codeup_test_db;

CREATE DATABASE IF NOT EXISTS  codeup_test_db;

CREATE USER 'codeup_test_user'@'localhost' IDENTIFIED BY '123';

GRANT ALL ON codeup_test_db.* TO 'codeup_test_user'@'localhost';

