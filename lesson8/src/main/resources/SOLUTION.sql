SELECT MAX(birthday) FROM student;
SELECT MIN(payment_date) FROM payment;
SELECT AVG(mark) FROM mark JOIN subject ON mark.subject_id = subject.id WHERE subject.name = 'Math';
SELECT MIN(amount) FROM payment WHERE type_id = (SELECT id FROM paymenttype WHERE name = 'WEEKLY');
