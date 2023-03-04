SELECT s.id, s.name FROM student s JOIN mark m ON s.id = m.student_id GROUP BY s.id, s.name HAVING AVG(m.mark) > 8;
SELECT s.id, s.name FROM student s JOIN mark m ON s.id = m.student_id GROUP BY s.id, s.name HAVING MIN(m.mark) > 7;
SELECT s.id, s.name FROM student s JOIN payment p ON s.id = p.student_id WHERE YEAR(p.payment_date) = 2019 GROUP BY s.id, s.name HAVING COUNT(*) > 2;