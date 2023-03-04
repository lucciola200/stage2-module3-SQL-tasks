DELETE FROM student WHERE id in (select DISTINCT m.student_id FROM mark AS m INNER JOIN  Subject AS s ON m.subject_id = s.id WHERE s.grade >= 4);
DELETE FROM student WHERE id in (select student_id FROM MARK GROUP BsY student_id, mark HAVING COUNT(mark) >= 1 AND mark < 4);
DELETE FROM paymenttype WHERE name = 'DAILY';
DELETE FROM mark WHERE mark < 7;