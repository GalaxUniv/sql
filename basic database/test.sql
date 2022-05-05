CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    first_name VARCHAR(32) NOT NULL,
    major VARCHAR(20) DEFAULT 'Not assigned yet',
    gpa DECIMAL(3,2),
    PRIMARY KEY(student_id)
);

Describe student;

/*del the table */
DROP TABLE student;

/*add colum */
ALTER TABLE student ADD gpa DECIMAL(3,2); 

/*removes colum */
ALTER TABLE student DROP COLUMN gpa;

/*add data */
INSERT INTO student(first_name, major, gpa) VALUES('Jack', 'Biology', 4.95);
INSERT INTO student(first_name, major, gpa) VALUES('Mike', 'Enginering', 3.76);
INSERT INTO student(first_name, major, gpa) VALUES('Kate', 'Sociology', 3.43);
INSERT INTO student(first_name, major, gpa) VALUES('Paul', 'Computer Sience', 4.21);
INSERT INTO student(first_name, major, gpa) VALUES('Micheal', 'Informatic', 3.83);


/*add data wichout all the data */
INSERT INTO student(student_id, first_name, gpa) VALUES(4, 'Clare', 3.95);

/*remove data */
DELETE FROM student WHERE student_id=3;

/*del all data from table*/
DELETE FROM student;

/*update data(usefull with auto_increment donst mess up student_id's)*/
UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'IT'
WHERE major = 'Computer Sience' OR major = 'Informatic';
-- <. > , <=, >=, <>(!=), =, AND, OR

/*show all data from table*/
SELECT * FROM student;

/*Select specific row */
SELECT * FROM student WHERE student_id=3;

/* */
SELECT student.first_name, student.major
FROM student
ORDER BY first_name /*ASC/DESC - asceding/desceding*/;
/*LIMIT number - limits number of results */
/* column IN ('name_1','name_2','name_3')*/