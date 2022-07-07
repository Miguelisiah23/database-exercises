USE employees;

SELECT first_name,last_name FROM employees WHERE first_name IN ('Irena','Vidya','Maya');

SELECT first_name,last_name FROM employees WHERE last_name LIKE 'E%';

SELECT first_name,last_name FROM employees WHERE last_name LIKE '%q%';

SELECT first_name, last_name FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');

SELECT first_name,last_name FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%e';

SELECT first_name,last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e';

SELECT first_name,last_name FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';

