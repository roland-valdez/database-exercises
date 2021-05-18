USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   artist VARCHAR(100) NOT NULL,
   name  VARCHAR(100) NOT NULL,
   release_date SMALLINT UNSIGNED NOT NULL,
   sales FLOAT(2) NOT NULL,
   genre varchar(100) NOT NULL,
   PRIMARY KEY (id)
);
