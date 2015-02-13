SELECT * FROM departments;
SELECT * FROM employees;
-- 1.1
SELECT *
FROM employees, departments
WHERE employees.deptcode = departments.code AND departments.name = 'Consulting'
-- 1.2
SELECT *
FROM employees CROSS JOIN departments
WHERE employees.deptcode = departments.code AND departments.name = 'Consulting'
-- 1.2b
SELECT *
FROM employees INNER JOIN departments
	ON employees.deptcode = departments.code 
WHERE departments.name = 'Consulting'


