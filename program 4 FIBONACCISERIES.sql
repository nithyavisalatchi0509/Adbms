```sql
DECLARE
    first NUMBER := 0;
    second NUMBER := 1;
    a NUMBER;
    n NUMBER := 6;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Series:');
    DBMS_OUTPUT.PUT_LINE(first);
    DBMS_OUTPUT.PUT_LINE(second);

    FOR i IN 2..n LOOP
        a := first + second;
        first := second;
        second := a;
        DBMS_OUTPUT.PUT_LINE(a);
    END LOOP;
END;
/
```
