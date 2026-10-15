```sql
CREATE TABLE student (
    sid NUMBER(10),
    sname VARCHAR(20),
    class VARCHAR(20),
    address VARCHAR(20)
);
INSERT INTO student VALUES (001, 'AbdulNasar', '111-BCA', 'villupuram');
INSERT INTO student VALUES (002, 'Amirthavalli', '111-BCA', 'chennai');
INSERT INTO student VALUES (004, 'Arangalingam', '111-BCA', 'karaikal');
INSERT INTO student VALUES (005, 'Aravindh', '111-BCA', 'coimbatore');
SELECT * FROM student;
update student set address='Trichy'where sid=004;
delete from student where sid=001;

