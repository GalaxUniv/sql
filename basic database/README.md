#SQL database

<h1>Creating a table</h1>

| student_id|name|major | gpa  |
| :---: | :---: | :---: | :---:|
| 1 | Jack  | Biology   | 3.37 |
| 2 | Kate  | Sociology | 3.76 |
| 3 | Claire| English   | 4.21 |
| 4 | Jack  | Biology   | 4.95 |
| 5 | Mike  | Comp.Sci  | 3.43 |

Code
```
CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    first_name VARCHAR(32) NOT NULL,
    major VARCHAR(20) DEFAULT 'Not assigned yet',
    gpa DECIMAL(3,2),
    PRIMARY KEY(student_id)
);
```

<h2> Basic operations

Deleting Table
```
DROP TABLE student;
```
Adding colums 
```
ALTER TABLE student ADD faculty VARCHAR(20);
```
Removing Columns 
```
ALTER TABLE student DROP COLUMN faculty;
```
Add data
```
INSERT INTO student(first_name, major, gpa) VALUES('Jack', 'Biology', 3.37);
```
Remove Data
```
DELETE FROM student WHERE student_id=3;
```
Delete all data from table
```
DELETE FROM student;
```
Show Data
```
SELECT * FROM student;
```
Select specific data + order
```
SELECT student.first_name, student.major
FROM student
ORDER BY first_name
```
Update data
```
UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';
```