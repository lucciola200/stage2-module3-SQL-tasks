/*  STUDENT*/
INSERT INTO Student(name, groupnumber) VALUES ('John', 1);
INSERT INTO Student(name, groupnumber) VALUES ('Chris', 1);
INSERT INTO Student(name, groupnumber) VALUES ('Carl', 1);

INSERT INTO Student(name, groupnumber) VALUES ('Oliver' ,2);
INSERT INTO Student(name, groupnumber) VALUES ('James', 2);
INSERT INTO Student(name, groupnumber) VALUES ('Lucas', 2);
INSERT INTO Student(name, groupnumber) VALUES ('Henry', 2);

INSERT INTO Student(name, groupnumber) VALUES ('Jacob' ,3);
INSERT INTO Student(name, groupnumber) VALUES ('Logan', 3);

INSERT INTO Student(name, groupnumber) VALUES ('Ava', 4);
INSERT INTO Student(name, groupnumber) VALUES ('Anna', 4);
INSERT INTO Student(name, groupnumber) VALUES ('Emilie', 4);
INSERT INTO Student(name, groupnumber) VALUES ('Bob', 4);

INSERT INTO Student(name, groupnumber) VALUES ('Ben' ,5);
INSERT INTO Student(name, groupnumber) VALUES ('Cate', 5);
INSERT INTO Student(name, groupnumber) VALUES ('Dany', 5);
INSERT INTO Student(name, groupnumber) VALUES ('Ika', 5);

INSERT INTO SUBJECT (name, grade) VALUES ('Art', 1);
INSERT INTO SUBJECT (name, grade) VALUES ('Music', 1);
INSERT INTO SUBJECT (name, grade) VALUES ('Geography', 2);
INSERT INTO SUBJECT (name, grade) VALUES ('History', 2);
INSERT INTO SUBJECT (name, grade) VALUES ('PE', 3);
INSERT INTO SUBJECT (name, grade) VALUES ('Math', 3);
INSERT INTO SUBJECT (name, grade) VALUES ('Science', 4);
INSERT INTO SUBJECT (name, grade) VALUES ('IT', 4);
INSERT INTO SUBJECT (name, grade) VALUES ('Computer Science', 5);
INSERT INTO SUBJECT (name, grade) VALUES ('Web Development', 5);

INSERT INTO PAYMENTTYPE (name) VALUES ('DAILY');
INSERT INTO PAYMENTTYPE (name) VALUES ('WEEKLY');
INSERT INTO PAYMENTTYPE (name) VALUES ('MONTHLY');

INSERT INTO PAYMENT (type_id, student_id) VALUES
    ((select id from PAYMENTTYPE WHERE name = 'WEEKLY'), (select id from Student WHERE name = 'John'));

INSERT INTO PAYMENT (type_id, student_id) VALUES
    ((select id from PAYMENTTYPE WHERE name = 'MONTHLY'), (select id from Student WHERE name = 'Oliver'));

INSERT INTO PAYMENT (type_id, student_id) VALUES
    ((select id from PAYMENTTYPE WHERE name = 'WEEKLY'), (select id from Student WHERE name = 'Henry'));

INSERT INTO PAYMENT (type_id, student_id) VALUES
    ((select id from PAYMENTTYPE WHERE name = 'DAILY'), (select id from Student WHERE name = 'James'));

INSERT INTO PAYMENT (type_id, student_id) VALUES
    ((select id from PAYMENTTYPE WHERE name = 'MONTHLY'), (select id from Student WHERE name = 'Anna'));

INSERT INTO PAYMENT (type_id, student_id) VALUES
    ((select id from PAYMENTTYPE WHERE name = 'WEEKLY'), (select id from Student WHERE name = 'Ava'));

INSERT INTO PAYMENT (type_id, student_id) VALUES
    ((select id from PAYMENTTYPE WHERE name = 'WEEKLY'), (select id from Student WHERE name = 'Bob'));

INSERT INTO MARK (student_id, subject_id, mark) VALUES ( (select id from Student where name='Chris'), (select id from Subject where name='Art'), 8);
INSERT INTO MARK (student_id, subject_id, mark) VALUES ( (select id from Student where name='Oliver'), (select id from Subject where name='History'), 5);
INSERT INTO MARK (student_id, subject_id, mark) VALUES ( (select id from Student where name='James'), (select id from Subject where name='Geography'), 9);
INSERT INTO MARK (student_id, subject_id, mark) VALUES ( (select id from Student where name='Jacob'), (select id from Subject where name='Math'), 4);
INSERT INTO MARK (student_id, subject_id, mark) VALUES ( (select id from Student where name='Logan'), (select id from Subject where name='PE'), 9);
INSERT INTO MARK (student_id, subject_id, mark) VALUES ( (select id from Student where name='Ava'), (select id from Subject where name='Computer Science'), 9);
INSERT INTO MARK (student_id, subject_id, mark) VALUES ( (select id from Student where name='Anna'), (select id from Subject where name='Web Development'), 9);