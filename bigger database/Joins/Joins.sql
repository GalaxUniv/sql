INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);
SELECT * FROM branch;
SELECT * FROM employee;

SELECT emp_id, first_name, branch_name -- no branch_name in employee but we JOIN branch and get branch name
FROM employee
JOIN branch
ON emp_id = mgr_id; --- GET branch id where emp_id = mgr_id

SELECT emp_id, first_name, branch_name 
FROM employee
LEFT JOIN branch
ON emp_id = mgr_id;

SELECT emp_id, first_name, branch_name 
FROM employee
RIGHT JOIN branch
ON emp_id = mgr_id;

SELECT emp_id, first_name, branch_name 
FROM employee
FULL JOIN branch
ON emp_id = mgr_id;