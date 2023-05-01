use bigfoot_test_bd;

DROP TABLE IF EXISTS user;

CREATE TABLE user(
     user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     username VARCHAR(35) NOT NULL,
     email VARCHAR(65) NOT NULL ,
     password VARCHAR(250) NOT NULL,
     PRIMARY KEY (user_id)
)