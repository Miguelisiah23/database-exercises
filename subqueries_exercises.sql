USE employees;

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS full_name FROM employees
WHERE employees.hire_date IN (
    SELECT employees.hire_date
    FROM employees
    WHERE employees.emp_no = 101010
    );

SELECT titles.title, COUNT(emp_no) AS employees
FROM titles
WHERE titles.emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE employees.first_name = 'Aamod'
    )
GROUP BY title;

SELECT employees.first_name AS First_name, employees.last_name AS Last_name
FROM employees
WHERE employees.gender = 'F' AND employees.emp_no IN (
    SELECT dept_manager.emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01'
    );

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_manager.dept_no
    FROM dept_manager
    WHERE YEAR(dept_manager.to_date) = 9999 AND emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE employees.gender = 'F'
        )
    );

SELECT employees.first_name AS first_name, employees.last_name AS last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary IN (
    SELECT MAX(salary)
    FROM salaries)
 );





