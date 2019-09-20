SELECT  e.employee_number,
        e.last_name,
        e.first_name,
        e.gender,
        s.salary
FROM employees as e
    LEFT JOIN salaries as s
    ON (emp.employee_number = sal.employee_number)
ORDER BY emp.employee_number;

SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        e.last_name,
        e.first_name,
        dm.from_date,
        dm.to_date
FROM dept_manager AS deptm
    INNER JOIN departments AS d
        ON (deptm.dept_no = d.dept_no)
    INNER JOIN employees AS e
        ON (deptm.emp_no = e.emp_no);

SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS depte
        ON (e.emp_no = depte.emp_no)
    INNER JOIN departments AS d
        ON (depte.dept_no = d.dept_no)
ORDER BY e.emp_no;

SELECT *
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS depte
        ON (e.emp_no = depte.emp_no)
    INNER JOIN departments AS d
        ON (depte.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS depte
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (depte.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY e.emp_no;

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
