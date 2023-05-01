USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     artist VARCHAR(35) NOT NULL,
     name VARCHAR(35) NOT NULL,
     release_date INT NOT NULL ,
     sales INT NOT NULL,
     genre VARCHAR(35) NOT NULL,
     PRIMARY KEY (id)
)