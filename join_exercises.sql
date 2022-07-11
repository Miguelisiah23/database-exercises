USE employees;

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS manager_name
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments  ON dept_manager.dept_no = departments.dept_no
WHERE to_date = '9999-01-01'
ORDER BY dept_name;

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS manager_name
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments  ON dept_manager.dept_no = departments.dept_no
WHERE to_date = '9999-01-01' AND employees.gender = 'F'
ORDER BY dept_name;

SELECT titles.title AS Title, COUNT(titles.emp_no)
FROM employees
JOIN titles on employees.emp_no = titles.emp_no
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE titles.to_date = '9999-01-01' AND dept_name = 'Customer Service'
GROUP BY title;

SELECT departments.dept_name AS Department_Name, CONCAT(employees.first_name, ' ', employees.last_name) AS Manager_Name, salaries.salary AS Salary
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE salaries.to_date = '9999-01-01' AND dept_manager.to_date = '9999-01-01'
ORDER BY dept_name;

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS Employee, departments.dept_name AS Department, CONCAT(em.first_name, ' ', em.last_name) AS Manager
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees as em ON dept_manager.emp_no = em.emp_no
WHERE dept_emp.to_date = '9999-01-01' AND dept_manager.to_date = '9999-01-01'
ORDER BY Department, dept_emp.emp_no;
