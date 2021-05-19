USE codeup_test_db;
SELECT "Albums released after 1991" AS "Message";
SELECT name FROM albums WHERE release_date > 1991;
SELECT "Albums with the genre disco" AS "Message";
SELECT name FROM albums WHERE genre = 'disco';
SELECT "Albums by James Horner" AS "Message";
SELECT name FROM albums WHERE artist = "James Horner";




SELECT "Delete albums released after 1991" AS "Message";
DELETE FROM albums WHERE release_date > 1991;
SELECT * FROM albums WHERE release_date > 1991;
SELECT "Delete albums with the genre disco" AS "Message";
DELETE FROM albums WHERE genre = 'disco';
SELECT * FROM albums WHERE genre = 'disco';
SELECT "Delete albums by James Horner" AS "Message";
DELETE FROM albums WHERE artist = "James Horner";
SELECT * FROM albums WHERE artist = "James Horner";