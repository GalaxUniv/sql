--- FIND a list of employees and branch names
--- SAME number of COLUMNS !! and same datatype ---
SELECT first_name AS name FROM employee
UNION
SELECT branch_name as Branches FROM branch;