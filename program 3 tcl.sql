INSERT INTO student
VALUES (006, 'Karthik', '111-BCA', 'Chennai');

SAVEPOINT sp1;

DELETE FROM student
WHERE sid = 6;

ROLLBACK TO sp1;

COMMIT;
