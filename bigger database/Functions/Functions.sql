


--- FIND NUMBER OF employees ---
SELECT COUNT(emp_id) FROM employee;

--- FIND the number of employees who are male and bron after 1970---
SELECT COUNT(emp_id) FROM employee
WHERE sex = 'M' and birth_day >= '1970-01-01';

--- FIND avg of each gender Salary
SELECT AVG(salary),sex FROM employee
GROUP BY sex;

---FIND number of each gender employee---
SELECT COUNT(sex),sex  FROM employee
GROUP BY sex;

--- FIND ALL sales by each sales man---
SELECT SUM(total_sales), COUNT(total_sales), emp_id FROM works_with
GROUP BY emp_id;