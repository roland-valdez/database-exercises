use employees;

SELECT dpt.dept_name AS 'Department Name', CONCAT( e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm
    ON e.emp_no = dm.emp_no
JOIN departments AS dpt
    ON dm.dept_no = dpt.dept_no
WHERE to_date > CURRENT_DATE;

SELECT dpt.dept_name AS 'Department Name', CONCAT( e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm
              ON e.emp_no = dm.emp_no
         JOIN departments AS dpt
              ON dm.dept_no = dpt.dept_no
WHERE to_date > CURRENT_DATE AND e.gender =  'f';

SELECT t.title, COUNT(*) AS 'Total'
FROM titles AS t
JOIN dept_emp as de
    ON t.emp_no = de.emp_no
JOIN departments AS dpt
    ON de.dept_no = dpt.dept_no
WHERE t.to_date > curdate() AND dpt.dept_name = 'customer service' GROUP BY t.title;
# WHERE t.to_date > curdate() GROUP BY t.title

SELECT dpt.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM employees AS e
JOIN salaries AS s
    ON e.emp_no = s.emp_no
JOIN dept_manager AS dm
    ON e.emp_no = dm.emp_no
JOIN departments AS dpt
    ON dm.dept_no = dpt.dept_no
WHERE s.to_date > curdate() AND dm.to_date > curdate();
# WHERE dm.to_date > curdate();
# salary has all the m