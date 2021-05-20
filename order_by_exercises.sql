USE employees;
SELECT * FROM employees WHERE
(first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
AND (gender IN ('M'))
ORDER BY first_name;

-- SELECT * FROM employees WHERE gender IN ('M')
-- AND (first_name IN ('Irena')
-- OR first_name IN ('Vidya')
-- OR first_name IN ('Maya'))
-- ORDER BY first_name;
SELECT * FROM employees WHERE last_name LIKE 'E%'
AND  (last_name LIKE '%E');
SELECT * FROM employees WHERE last_name LIKE 'E%'
AND  (last_name LIKE '%E')
ORDER BY emp_no;
-- SELECT last_name FROM employees WHERE last_name LIKE '%q%'
-- AND last_name NOT LIKE '%qu%';