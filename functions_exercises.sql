USE employees;
-- SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%'
-- AND  (last_name LIKE '%E') LIMIT 10;


-- SELECT first_name, last_name, birth_date FROM employees WHERE MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25 LIMIT 25;

SELECT first_name, last_name, DATEDIFF(now(), hire_date) AS 'DAYS SINCE HIRED' FROM employees WHERE
MONTH(birth_date) = 12
AND DAYOFMONTH(birth_date) = 25
AND YEAR(hire_date) BETWEEN 1990 AND 1999 LIMIT 5;