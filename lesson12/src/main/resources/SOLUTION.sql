DELETE FROM Payment WHERE student_id IN (SELECT id FROM Student WHERE groupnumber >= 4);
DELETE FROM Mark WHERE student_id IN (SELECT id FROM Student WHERE groupnumber >= 4);
DELETE FROM Student WHERE groupnumber >= 4;
DELETE FROM Mark WHERE student_id IN (SELECT id FROM Student WHERE groupnumber < 4);
DELETE FROM Student WHERE groupnumber < 4;
DELETE FROM Payment WHERE type_id NOT IN (SELECT id FROM PaymentType WHERE name = 'Daily');
DELETE FROM PaymentType WHERE name = 'Daily';
DELETE FROM Mark WHERE mark in (0,6);

