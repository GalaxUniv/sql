--- Employees who sold over 30000 to a single client
SELECT employee.first_name, employee.last_name from employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id FROM works_with
    WHERE works_with.total_sales  >=  30000
);

--- Find all clinets who are handled by the branch that
--- Micheal Scott manges

SELECT client.client_name FROM client
WHERE client.branch_id IN (
    SELECT branch.branch_id FROM branch
    WHERE mgr_id IN(
        SELECT employee.emp_id FROM employee
        WHERE first_name =  'Michael' and last_name = 'Scott'
    )
);