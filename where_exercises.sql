USE employees;
SELECT first_name FROM employees WHERE gender IN ('M')
AND (first_name IN ('Irena')
OR first_name IN ('Vidya')
OR first_name IN ('Maya'));
SELECT last_name FROM employees WHERE last_name LIKE 'E%'
AND  (last_name LIKE '%E');
SELECT last_name FROM employees WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';