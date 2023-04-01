INSERT INTO Student(id, name, birthday, groupnumber) VALUES (1, 'John', CURRENT_DATE(), 1);
INSERT INTO Student(id, name, birthday, groupnumber) VALUES (2,'Chris', CURRENT_DATE(),1);
INSERT INTO Student(id, name, birthday, groupnumber) VALUES (3,'Carl', CURRENT_DATE(),1);
INSERT INTO Student(id, name, birthday, groupnumber) VALUES (4,'Oliver',CURRENT_DATE(),2);
INSERT INTO Student(id, name, birthday, groupnumber) VALUES (5,'James', CURRENT_DATE(),2);
INSERT INTO Student(id, name, birthday, groupnumber) VALUES (6,'Lucas', CURRENT_DATE(),2);
INSERT INTO Student(id, name, birthday, groupnumber) VALUES (7,'Henry', CURRENT_DATE(),2);
INSERT INTO Student(id, name, birthday, groupnumber) VALUES (8,'Jacob',CURRENT_DATE(),3);
INSERT INTO Student(id, name, birthday, groupnumber) VALUES (9,'Logan', CURRENT_DATE(),3);
INSERT INTO Student(id, name, birthday, groupnumber) VALUES (10,'Asliddin', CURRENT_DATE(),4);
INSERT INTO Student(id, name, birthday, groupnumber) VALUES (11,'Azamat', CURRENT_DATE(),4);
INSERT INTO Student(id, name, birthday, groupnumber) VALUES (12,'Jahongir', CURRENT_DATE(),4);
INSERT INTO Student(id, name, birthday, groupnumber) VALUES (13,'Bobojon', CURRENT_DATE(),4);
INSERT INTO Student(id, name, birthday, groupnumber) VALUES (14,'Bobur' , CURRENT_DATE(),5);
INSERT INTO Student(id, name, birthday, groupnumber) VALUES (15,'Elmurod', CURRENT_DATE(),5);
INSERT INTO Student(id, name, birthday, groupnumber) VALUES (16,'Donyor', CURRENT_DATE(),5);
INSERT INTO Student(id, name, birthday, groupnumber) VALUES (17,'Ikrima', CURRENT_DATE(),5);

INSERT INTO Subject (id, name, description, grade) VALUES (1, 'Art', 'Art and music for 1 grade', 1);
INSERT INTO Subject (id, name, description, grade) VALUES (2, 'Geography', 'Geography and history for 2 grade', 2);
INSERT INTO Subject (id, name, description, grade) VALUES (3, 'PE', 'PE and math for 3 grade', 3);
INSERT INTO Subject (id, name, description, grade) VALUES (4, 'Science', 'Science and IT for 4 grade', 4);
INSERT INTO Subject (id, name, description, grade) VALUES (5, 'Music', 'Music for 5 grade', 5);
INSERT INTO Subject (id, name, description, grade) VALUES (6, 'Literature', 'Literature for 5 grade', 5);
INSERT INTO PaymentType (id, name) VALUES (1, 'DAILY');
INSERT INTO PaymentType (id, name) VALUES (2, 'WEEKLY');
INSERT INTO PaymentType (id, name) VALUES (3, 'MONTHLY');

INSERT INTO payment (type_id, amount, payment_date, student_id)VALUES ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'),9995.80,CURRENT_TIMESTAMP,(SELECT id FROM student WHERE name LIKE 'John%'));
INSERT INTO payment (type_id, amount, payment_date, student_id)VALUES ((SELECT id FROM paymenttype WHERE name = 'MONTHLY'),15995.50,CURRENT_TIMESTAMP,(SELECT id FROM student WHERE name LIKE 'Oliver%'));
INSERT INTO payment (type_id, amount, payment_date, student_id)VALUES ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'),7995.25,CURRENT_TIMESTAMP,(SELECT id FROM student WHERE name LIKE 'Henry%'));
INSERT INTO payment (type_id, amount, payment_date, student_id)VALUES ((SELECT id FROM paymenttype WHERE name = 'DAILY'),2995.75,CURRENT_TIMESTAMP,(SELECT id FROM student WHERE name LIKE 'James%'));
INSERT INTO payment (type_id, amount, payment_date, student_id)VALUES ((SELECT id FROM paymenttype WHERE name = 'MONTHLY'),5995.50,CURRENT_TIMESTAMP,(SELECT id FROM student WHERE name LIKE 'Donyor%'));
INSERT INTO payment (type_id, amount, payment_date, student_id)VALUES ((SELECT id FROM paymenttype WHERE name = 'WEEKLY'),6995.25,CURRENT_TIMESTAMP,(SELECT id FROM student WHERE name LIKE 'Elmurod%'));
INSERT INTO payment (type_id, amount, payment_date, student_id)VALUES ((SELECT id FROM paymenttype WHERE name = 'DAILY'),2895.75,CURRENT_TIMESTAMP,(SELECT id FROM student WHERE name LIKE 'Ikrima%'));


INSERT INTO MARK (id, student_id, subject_id, mark) VALUES (1, (SELECT id FROM Student WHERE name='Chris'), (SELECT id FROM Subject WHERE name='Art'), 8);
INSERT INTO MARK (id, student_id, subject_id, mark) VALUES (2, (SELECT id FROM Student WHERE name='Oliver'), (SELECT id FROM Subject WHERE name='History'), 5);
INSERT INTO MARK (id, student_id, subject_id, mark) VALUES (3, (SELECT id FROM Student WHERE name='James'), (SELECT id FROM Subject WHERE name='Geography'), 9);
INSERT INTO MARK (id, student_id, subject_id, mark) VALUES (4, (SELECT id FROM Student WHERE name='Jacob'), (SELECT id FROM Subject WHERE name='Math'), 4);
INSERT INTO MARK (id, student_id, subject_id, mark) VALUES (5, (SELECT id FROM Student WHERE name='Logan'), (SELECT id FROM Subject WHERE name='PE'), 9);
INSERT INTO MARK (id, student_id, subject_id, mark) VALUES (6, (SELECT id FROM Student WHERE name='Emily'), (SELECT id FROM Subject WHERE name='Computer Science'), 9);
INSERT INTO MARK (id, student_id, subject_id, mark) VALUES (7, (SELECT id FROM Student WHERE name='Azamat'), (SELECT id FROM Subject WHERE name='Web Development'), 9);