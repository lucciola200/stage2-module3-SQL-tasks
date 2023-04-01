DELETE FROM mark WHERE student_id IN (SELECT m.student_id FROM mark m JOIN subject s ON m.subject_id = s.id WHERE s.grade >= 4);
DELETE FROM payment WHERE student_id IN (SELECT m.student_id FROM mark m JOIN subject s ON m.subject_id = s.id WHERE s.grade >= 4);
DELETE FROM student WHERE id IN (SELECT m.student_id FROM mark m JOIN subject s ON m.subject_id = s.id WHERE s.grade >= 4);

DELETE FROM mark WHERE student_id IN (SELECT m.student_id FROM mark m WHERE m.mark < 4);
DELETE FROM payment WHERE student_id IN (SELECT m.student_id FROM mark m WHERE m.mark < 4);
DELETE FROM student WHERE id IN (SELECT m.student_id FROM mark m WHERE m.mark < 4);

DELETE FROM payment WHERE type_id IN (SELECT pt.id FROM paymenttype pt WHERE pt.name = 'Daily');
DELETE FROM paymenttype WHERE name = 'Daily';

DELETE FROM mark WHERE mark < 7;

