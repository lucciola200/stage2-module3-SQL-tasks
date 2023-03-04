DELETE FROM mark WHERE student_id IN (SELECT id FROM student WHERE groupnumber >= 4);
DELETE FROM student WHERE groupnumber >= 4;
DELETE FROM student WHERE id in (select student_id FROM mark GROUP BY student_id, mark HAVING COUNT(mark) >= 1 AND mark < 4);
DELETE FROM paymenttype WHERE name = 'DAILY';
DELETE FROM mark WHERE mark < 7;