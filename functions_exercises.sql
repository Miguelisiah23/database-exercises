USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY first_name, emp_no DESC;

SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY first_name, last_name;

SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY last_name, first_name;


SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no;

SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no DESC ;

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%e';

SELECT CONCAT(first_name, last_name) FROM employees WHERE last_name LIKE 'E%e';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT * FROM employees WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12;

SELECT * FROM employees WHERE YEAR(hire_date) BETWEEN 1990 AND 1999 AND DAY(birth_date) = 25 AND MONTH(birth_date) = 12;

SELECT * FROM employees
 WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
 AND DAY(birth_date) = 25
 AND MONTH(birth_date) = 12
 ORDER BY birth_date, hire_date DESC;

SELECT emp_no, first_name, last_name, CONCAT('Been at the company ', DATEDIFF(CURDATE(), hire_date), ' days.') FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
AND DAY(birth_date) = 25
AND MONTH(birth_date) = 12;



