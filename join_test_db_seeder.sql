-- CREATE DATABASE IF NOT EXISTS join_test_db;
USE join_test_db;
-- TRUNCATE roles;
-- TRUNCATE users;
-- CREATE TABLE roles (
-- id INT UNSIGNED NOT NULL AUTO_INCREMENT,
-- name VARCHAR(100) NOT NULL,
-- PRIMARY KEY (id)
-- );
--
-- CREATE TABLE users (
-- id INT UNSIGNED NOT NULL AUTO_INCREMENT,
-- name VARCHAR(100) NOT NULL,
-- email VARCHAR(100) NOT NULL,
-- role_id INT UNSIGNED DEFAULT NULL,
-- PRIMARY KEY (id),
-- FOREIGN KEY (role_id) REFERENCES roles (id)
-- );
--
-- INSERT INTO roles (name) VALUES ('admin');
-- INSERT INTO roles (name) VALUES ('author');
-- INSERT INTO roles (name) VALUES ('reviewer');
-- INSERT INTO roles (name) VALUES ('commenter');

-- INSERT INTO users (name, email, role_id) VALUES
-- ('frank', 'frank@example.com', 1),
-- ('pedro', 'pedro@example.com', 2),
-- ('abby', 'abby@example.com', 3),
-- ('richard', 'richard@example.com', null);
--
-- UPDATE users
-- SET role_id = 2
-- WHERE id = 7;
-- UPDATE users
-- SET role_id = 2
-- WHERE id = 9;
SELECT 'JOIN' AS 'JOIN';
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT 'JOIN' AS 'LEFT JOIN';
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

SELECT 'JOIN' AS 'RIGHT JOIN';
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

SELECT 'JOIN COUNT' AS 'JOIN';
SELECT roles.name AS role_name, COUNT(roles.name)
FROM users
RIGHT JOIN roles ON users.role_id = roles.id GROUP BY role_name;