-- Find the number of employees
SELECT COUNT(emp_id)
FROM employee;

-- How many employees have supervisors
SELECT COUNT(super_id)
FROM employee;

-- Find the number of female employees born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE employee.birth_day > '1970-12-31' AND employee.sex = 'F';

-- Find the average of all employees salary
SELECT AVG(employee.salary)
FROM employee;

-- Find the average of all employees salary who are male
SELECT AVG(employee.salary)
FROM employee
WHERE employee.sex = 'M';

-- Find the sum of all employees salary
SELECT SUM(employee.salary)
FROM employee;

-- Find out how many males and females there are
SELECT COUNT(sex), sex 
FROM employee
GROUP BY sex;

-- Find the total sales of each salesman
SELECT SUM(works_with.total_sales), works_with.emp_id
FROM works_with
GROUP BY works_with.emp_id;

-- How much money each client is spending with the branch
SELECT SUM(works_with.total_sales), works_with.client_id
FROM works_with
GROUP BY works_with.client_id;

