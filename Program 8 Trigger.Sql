CREATE TABLE voter ( vid NUMBER(10),  vname VARCHAR2(20),vcity VARCHAR2(20));

INSERT INTO voter VALUES (20001, 'Savitha', 'Pondy');
INSERT INTO voter VALUES (40001, 'SeranPandian', 'Villupuram');
INSERT INTO voter VALUES (20002, 'Shanmugam', 'Chennai');
INSERT INTO voter VALUES (50005, 'Siddhardhan', 'Puducherry');
INSERT INTO voter VALUES (50005, 'Sivasankaran', 'Perambai');

SELECT * FROM voter;

CREATE OR REPLACE TRIGGER tdel
AFTER UPDATE OR DELETE ON voter
FOR EACH ROW
BEGIN
    IF UPDATING THEN
        DBMS_OUTPUT.PUT_LINE('Trigger Fired - Record Updated');
    ELSIF DELETING THEN
        DBMS_OUTPUT.PUT_LINE('Trigger Fired - Record Deleted');
    END IF;
END;
/
SET SERVEROUTPUT ON;
UPDATE voter
SET vcity = 'Chennai'
WHERE vid = 20001;
