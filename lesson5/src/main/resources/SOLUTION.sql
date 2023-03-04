SELECT * FROM Payment WHERE amount >= 500;
SELECT * FROM Student WHERE birthday < DATEADD(YEAR, -20, NOW());
SELECT * FROM Student WHERE groupNumber = 10 AND birthday > DATEADD(YEAR, -20, NOW());
SELECT * FROM Student WHERE name = 'Mike' OR groupNumber IN (4, 5, 6);
SELECT * FROM Payment WHERE payment_date >= DATEADD(MONTH, -8, NOW());
SELECT * FROM Student WHERE name LIKE 'A%';
SELECT * FROM Student WHERE (name = 'Roxi%' AND groupNumber = 4) OR (name = 'Tallie%' AND groupNumber = 9);
