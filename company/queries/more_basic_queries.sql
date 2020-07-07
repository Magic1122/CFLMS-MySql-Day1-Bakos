-- Find all employees
SELECT * FROM employee;

-- Find all clients
SELECT * FROM client;

-- Find all employees ordered by salary
SELECT *
FROM employee
ORDER BY employee.salary;

-- Find all employees ordered by salary descending
SELECT *
FROM employee
ORDER BY employee.salary DESC;

-- Find all employees ordered by sex and name
SELECT *
FROM employee
ORDER BY employee.sex, employee.first_name, employee.last_name;

-- Find the first 5 employee in the table
SELECT *
FROM employee
LIMIT 5;

-- Find the first and last names of all employees
SELECT first_name, last_name
FROM employee;

-- Find the forname and surname of all employees
SELECT first_name AS forename, last_name AS surname
FROM employee;

-- Find out all the different genders
SELECT DISTINCT employee.sex 
FROM employee;

-- Find out all the different branch ids
SELECT DISTINCT employee.branch_id 
FROM employee;
