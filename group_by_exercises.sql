USE employees;
-- SELECT DISTINCT title FROM titles;
--
-- SELECT last_name, first_name FROM employees WHERE last_name LIKE 'E%'
-- AND  (last_name LIKE '%E') GROUP BY last_name, first_name ORDER BY last_name;

-- SELECT last_name, count(last_name) FROM employees WHERE last_name LIKE '%q%'
-- AND  (last_name NOT LIKE '%qu%') GROUP BY last_name;

SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;
SELECT hire_date, COUNT(hire_date)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(hire_date) DESC
    LIMIT 10;

SELECT COUNT(gender), gender FROM employees WHERE
    first_name IN ('Irena')
    OR first_name IN ('Vidya')
    OR first_name IN ('Maya') GROUP BY gender;