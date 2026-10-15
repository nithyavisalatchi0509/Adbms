CREATE TABLE customer ( id NUMBER PRIMARY KEY, name VARCHAR2(50),age NUMBER(3),address VARCHAR2(20), salary NUMBER(10));

INSERT INTO customer VALUES (1000, 'Roobani', 17, 'Perambai', 10000);
INSERT INTO customer VALUES (2000, 'Sabeetha', 17, 'Villupuram', 20000);
INSERT INTO customer VALUES (3000, 'SalimMalik', 18, 'Chennai', 30000);
INSERT INTO customer VALUES (4000, 'SanthoshKumar', 18, 'Puducherry', 9000);
INSERT INTO customer VALUES (6000, 'SathishKumar', 18, 'Pondy', 10000);

SELECT * FROM customer;

SET SERVEROUTPUT ON;

DECLARE
    total_rows NUMBER;
BEGIN
    UPDATE customer
    SET salary = salary + 500;

    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No customers selected');
    ELSE
        total_rows := SQL%ROWCOUNT;
        DBMS_OUTPUT.PUT_LINE(
            total_rows || ' customers updated'
        );
    END IF;
END;
/

SET SERVEROUTPUT ON;

DECLARE
    c_id   customer.id%TYPE;
    c_name customer.name%TYPE;
    c_addr customer.address%TYPE;

    CURSOR c_customers IS
        SELECT id, name, address
        FROM customer;

BEGIN
    OPEN c_customers;

    LOOP
        FETCH c_customers
        INTO c_id, c_name, c_addr;

        EXIT WHEN c_customers%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            c_id || ' ' || c_name || ' ' || c_addr
        );
    END LOOP;

    CLOSE c_customers;
END;
/
