INSERT INTO Student (id, name, birthday, groupnumber) VALUES (1, 'John', CURRENT_DATE(), 1);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (2, 'Chris', CURRENT_DATE(), 1);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (3, 'Carl', CURRENT_DATE(), 1);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (4, 'Oliver', CURRENT_DATE(), 2);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (5, 'James', CURRENT_DATE(), 2), (6, 'Lucas', CURRENT_DATE(), 2);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (7, 'Henry', CURRENT_DATE(), 2);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (8, 'Jacob', CURRENT_DATE(), 3);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (9, 'Logan', CURRENT_DATE(), 3);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (10, 'Emily', CURRENT_DATE(), 4);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (11, 'Ava', CURRENT_DATE(), 4);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (12, 'Ethan', CURRENT_DATE(), 4);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (13, 'Mia', CURRENT_DATE(), 5);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (14, 'Noah', CURRENT_DATE(), 5);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (15, 'Sophia', CURRENT_DATE(), 5);
INSERT INTO Subject (id, name, description, grade) VALUES (1, 'Art', 'Art and music for 1 grade', 1),
INSERT INTO Subject (id, name, description, grade) VALUES (2, 'Geography', 'Geography and history for 2 grade', 2);
INSERT INTO Subject (id, name, description, grade) VALUES (3, 'PE', 'PE and math for 3 grade', 3);
INSERT INTO Subject (id, name, description, grade) VALUES (4, 'Science', 'Science and IT for 4 grade', 4);
INSERT INTO Subject (id, name, description, grade) VALUES (5, 'Music', 'Music for 5 grade', 5);
INSERT INTO Subject (id, name, description, grade) VALUES (6, 'Literature', 'Literature for 5 grade', 5);
INSERT INTO PaymentType (id, name) VALUES (1, 'DAILY'), (2, 'WEEKLY'), (3, 'MONTHLY');
INSERT INTO PAYMENT (id,'type_id', 'student_id') VALUES (1, (select id from PAYMENTTYPE WHERE name = 'WEEKLY'), (select id from Student WHERE name = 'John'));
INSERT INTO PAYMENT (id,'type_id', 'student_id') VALUES (2, (select id from PAYMENTTYPE WHERE name = 'MONTHLY'), (select id from Student WHERE name = 'Oliver'));
INSERT INTO PAYMENT (id,'type_id', 'student_id') VALUES (3, (select id from PAYMENTTYPE WHERE name = 'WEEKLY'), (select id from Student WHERE name = 'Henry'));
INSERT INTO PAYMENT (id,'type_id', 'student_id') VALUES (4, (select id from PAYMENTTYPE WHERE name = 'DAILY'), (select id from Student WHERE name = 'James'));
INSERT INTO PAYMENT (id,'type_id', 'student_id') VALUES (5, (select id from PAYMENTTYPE WHERE name = 'MONTHLY'), (select id from Student WHERE name = 'Azamat'));
INSERT INTO PAYMENT (id,'type_id', 'student_id') VALUES (6, (select id from PAYMENTTYPE WHERE name = 'WEEKLY'), (select id from Student WHERE name = 'Asliddin'));
INSERT INTO PAYMENT (id,'type_id', 'student_id') VALUES (7, (select id from PAYMENTTYPE WHERE name = 'WEEKLY'), (select id from Student WHERE name = 'Bobojon'));
INSERT INTO MARK (id, student_id, subject_id, mark) VALUES (1, (select id from Student where name='Chris'), (select id from Subject where name='Art'), 8);
INSERT INTO MARK (id, student_id, subject_id, mark) VALUES (2, (select id from Student where name='Oliver'), (select id from Subject where name='History'), 5);
INSERT INTO MARK (id, student_id, subject_id, mark) VALUES (3, (select id from Student where name='James'), (select id from Subject where name='Geography'), 9);
INSERT INTO MARK (id, student_id, subject_id, mark) VALUES (4, (select id from Student where name='Jacob'), (select id from Subject where name='Math'), 4);
INSERT INTO MARK (id, student_id, subject_id, mark) VALUES (5, (select id from Student where name='Logan'), (select id from Subject where name='PE'), 9);
INSERT INTO MARK (id, student_id, subject_id, mark) VALUES (6, (select id from Student where name='Asliddin'), (select id from Subject where name='Computer Science'), 9);
INSERT INTO MARK (id, student_id, subject_id, mark) VALUES (7, (select id from Student where name='Azamat'), (select id from Subject where name='Web Development'), 9);


