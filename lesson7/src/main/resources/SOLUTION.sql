SELECT * FROM Mark WHERE mark > 6 ORDER BY mark DESC;
SELECT * FROM Payment WHERE amount < 300 ORDER BY amount ASC;
SELECT * FROM PaymentType ORDER BY name ASC;
SELECT * FROM Student ORDER BY name DESC;
SELECT DISTINCT s.* FROM Student s INNER JOIN Payment p ON s.id = p.student_id WHERE p.amount > 1000 ORDER BY s.birthday ASC;
