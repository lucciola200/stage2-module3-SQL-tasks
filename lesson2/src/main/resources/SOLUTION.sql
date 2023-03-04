-- Insert new Students for grade 1
INSERT INTO Student (id, name, birthday, group) VALUES (1, 'John', '2005-05-01', 1), (2, 'Chris', '2005-05-02', 1), (3, 'Carl', '2005-05-03', 1);

-- Insert new Students for grade 2
INSERT INTO Student (id, name, birthday, group) VALUES (4, 'Oliver', '2004-05-01', 2), (5, 'James', '2004-05-02', 2), (6, 'Lucas', '2004-05-03', 2), (7, 'Henry', '2004-05-04', 2);

-- Insert new Students for grade 3
INSERT INTO Student (id, name, birthday, group) VALUES (8, 'Jacob', '2003-05-01', 3), (9, 'Logan', '2003-05-02', 3);

-- Insert new Students for grade 4
INSERT INTO Student (id, name, birthday, group) VALUES (10, 'Emily', '2002-05-01', 4), (11, 'Ava', '2002-05-02', 4), (12, 'Ethan', '2002-05-03', 4);

-- Insert new Students for grade 5
INSERT INTO Student (id, name, birthday, group) VALUES (13, 'Mia', '2001-05-01', 5), (14, 'Noah', '2001-05-02', 5), (15, 'Sophia', '2001-05-03', 5);

-- Insert new Subjects
INSERT INTO Subject (id, name, description, grade) VALUES (1, 'Art', 'Art and music for 1 grade', 1), (2, 'Geography', 'Geography and history for 2 grade', 2), (3, 'PE', 'PE and math for 3 grade', 3), (4, 'Science', 'Science and IT for 4 grade', 4), (5, 'Music', 'Music for 5 grade', 5), (6, 'Literature', 'Literature for 5 grade', 5);

-- Insert new Payment Types
INSERT INTO PaymentType (id, name) VALUES (1, 'DAILY'), (2, 'WEEKLY'), (3, 'MONTHLY');

-- Insert new Payments
INSERT INTO Payment (id, type_id, amount, student_id, payment_date) SELECT 1, 2, 100, s.id, NOW() FROM Student s WHERE s.name = 'John';
INSERT INTO Payment (id, type_id, amount, student_id, payment_date) SELECT 2, 3, 200, s.id, NOW() FROM Student s WHERE s.name = 'Oliver';
INSERT INTO Payment (id, type_id, amount, student_id, payment_date) SELECT 3, 2, 150, s.id, NOW() FROM Student s WHERE s.name = 'Henry';
INSERT INTO Payment (id, type_id, amount, student_id, payment_date) SELECT 4, 1, 50, s.id, NOW() FROM Student s WHERE s.name = 'James';

-- Insert more payments for students
INSERT INTO Payment (id, type_id, amount, student_id, payment_date) VALUES(5, 1, 200.00, 1, '2022-01-05'), (6, 2, 300.00, 2, '2022-01-06'), (7, 3, 250.00, 7, '2022-01-07'), (8, 1, 100.00, 5, '2022-01-08');

--Insert 5 Marks
INSERT INTO Mark (student_id, subject_id, mark) SELECT s.id, sub.id, 8 FROM Student s, Subject sub WHERE s.name = 'Chris' AND sub.name = 'Art';
INSERT INTO Mark (student_id, subject_id, mark) SELECT s.id, sub.id, 5 FROM Student s, Subject sub WHERE s.name = 'Oliver' AND sub.name = 'History';
INSERT INTO Mark (student_id, subject_id, mark) SELECT s.id, sub.id, 9 FROM Student s, Subject sub WHERE s.name = 'James' AND sub.name = 'Geography';
INSERT INTO Mark (student_id, subject_id, mark) SELECT s.id, sub.id, 4 FROM Student s, Subject sub WHERE s.name = 'Jacob' AND sub.name = 'Math';
INSERT INTO Mark (student_id, subject_id, mark) SELECT s.id, sub.id, 9 FROM Student s, Subject sub WHERE s.name = 'Logan' AND sub.name = 'PE';

