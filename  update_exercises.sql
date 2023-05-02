USE codeup_test_db;


SELECT  * FROM albums;
SELECT  * FROM albums where release_date <1980 ;
SELECT  * FROM albums where artist = 'Michael Jackson' ;

UPDATE albums
SET sales= (sales *10);
SELECT  * FROM albums;

update albums
set release_date = 1800
WHERE release_date < 1980;
SELECT  * FROM albums WHERE release_date =1800;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT  * FROM albums where artist = 'Peter Jackson' ;
