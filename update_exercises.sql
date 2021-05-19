USE codeup_test_db;
SELECT "These are all the albums in the database" AS "Message";
SELECT * FROM albums;
UPDATE albums
SET sales = sales * 10;
SELECT "These are all the albums in the database with sales multiplied by 10" AS "Message";
SELECT * FROM albums;

SELECT "These are all the albums released before 1980" AS "Message";
SELECT name FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;
SELECT "These are all the albums released before 1880" AS "Message";
SELECT name FROM albums WHERE release_date < 1880;

SELECT "These are all the albums by Michael Jackson" AS "Message";
SELECT name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT "These are all the albums by Peter Jackson" AS "Message";
SELECT name FROM albums WHERE artist = 'Peter Jackson';