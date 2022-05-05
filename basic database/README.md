#SQL database

All the code snippets from <a href="test.sql">sql</a> file

<h1>Creating a table</h1>

| student_id|name|major | gpa  |
| :---: | :---: | :---: | :---:|
| 1 | Jack  | Biology   | 3.37 |
| 2 | Kate  | Sociology | 3.76 |
| 3 | Claire| English   | 4.21 |
| 4 | Jack  | Biology   | 4.95 |
| 5 | Mike  | Comp.Sci  | 3.43 |

Code
```sql
CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    first_name VARCHAR(32) NOT NULL,
    major VARCHAR(20) DEFAULT 'Not assigned yet',
    gpa DECIMAL(3,2),
    PRIMARY KEY(student_id)
);
```

<h2> Basic operations</h2>

Deleting Table
```sql
DROP TABLE student;
```
Adding colums 
```sql
ALTER TABLE student ADD faculty VARCHAR(20);
```
Removing Columns 
```sql
ALTER TABLE student DROP COLUMN faculty;
```
Add data
```sql
INSERT INTO student(first_name, major, gpa) VALUES('Jack', 'Biology', 3.37);
```
Remove Data
```sql
DELETE FROM student WHERE student_id=3;
```
Delete all data from table
```sql
DELETE FROM student;
```
Show Data
```sql
SELECT * FROM student;
```
Select specific data + order
```sql
SELECT student.first_name, student.major
FROM student
ORDER BY first_name
```
Update data
```sql
UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';
```
