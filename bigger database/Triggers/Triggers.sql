CREATE TABLE trigger_test(
    message VARCHAR(100)
);


DELIMITER $$ --- Has to be in entered in Command Line
CREATE
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES('added new employee');
    END $$
DELIMITER ;

INSERT INTO employee VALUES(109, 'Oscar', 'Martinez', '1968-12-17', 'M', 20000, 106, 3);

SELECT * FROM trigger_test;

---

DELIMITER $$
CREATE 
    TRIGGER my_trigger_2 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        IF NEW.sex = 'M' THEN
            INSERT INTO trigger_test VALUES('added male employee');
        ELSEIF NEW.sex = 'F' THEN
            INSERT INTO trigger_test VALUES ('added famale employee');
        ELSE 
            INSERT INTO trigger_test VALUES ('added other employee');
        END IF;
    END$$
DELIMITER ;