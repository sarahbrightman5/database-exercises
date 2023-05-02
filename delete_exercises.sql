USE codeup_test_db;

SELECT  * FROM albums;
SELECT  * FROM albums where release_date <1991 ;
SELECT  * FROM albums where genre = 'disco' ;
SELECT  * FROM albums where artist = 'BTS' ;

DELETE  FROM albums where release_date <1991 ;
DELETE  FROM albums where genre = 'disco' ;
DELETE  FROM albums where artist = 'AC/DC' ;