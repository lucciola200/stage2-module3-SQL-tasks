INSERT INTO Student (id, name, birthday, groupnumber) VALUES (1, 'John', '2005-05-01', 1), (2, 'Chris', '2005-05-02', 1), (3, 'Carl', '2005-05-03', 1);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (4, 'Oliver', '2004-05-01', 2), (5, 'James', '2004-05-02', 2), (6, 'Lucas', '2004-05-03', 2), (7, 'Henry', '2004-05-04', 2);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (8, 'Jacob', '2003-05-01', 3), (9, 'Logan', '2003-05-02', 3);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (10, 'Emily', '2002-05-01', 4), (11, 'Ava', '2002-05-02', 4), (12, 'Ethan', '2002-05-03', 4);
INSERT INTO Student (id, name, birthday, groupnumber) VALUES (13, 'Mia', '2001-05-01', 5), (14, 'Noah', '2001-05-02', 5), (15, 'Sophia', '2001-05-03', 5);
INSERT INTO Subject (id, name, description, grade) VALUES (1, 'Art', 'Art and music for 1 grade', 1), (2, 'Geography', 'Geography and history for 2 grade', 2), (3, 'PE', 'PE and math for 3 grade', 3), (4, 'Science', 'Science and IT for 4 grade', 4), (5, 'Music', 'Music for 5 grade', 5), (6, 'Literature', 'Literature for 5 grade', 5);
INSERT INTO PaymentType (id, name) VALUES (1, 'DAILY'), (2, 'WEEKLY'), (3, 'MONTHLY');
INSERT INTO Payment (id, type_id, amount, student_id, payment_date) VALUES(5, 1, 200.00, 1, '2022-01-05'), (6, 2, 300.00, 2, '2022-01-06'), (7, 3, 250.00, 7, '2022-01-07'), (8, 1, 100.00, 5, '2022-01-08');
INSERT INTO mark(id, student_id, subject_id, mark) VALUES (1,2,1,8),(2,4,4,5),(3,5,3,9),(4,8,6,4),(5,9,5 ,9),
