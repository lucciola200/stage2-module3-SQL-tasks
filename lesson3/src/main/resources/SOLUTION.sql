ALTER TABLE student MODIFY COLUMN birthday DATE NOT NULL;
ALTER TABLE Mark MODIFY COLUMN mark INT NOT NULL CHECK (mark >= 1 AND mark <= 10), MODIFY COLUMN student_id BIGINT NOT NULL, MODIFY COLUMN subject_id BIGINT NOT NULL;
ALTER TABLE Subject MODIFY COLUMN groupnumber INT NOT NULL CHECK (groupnumber >= 1 AND groupnumber <= 5);
ALTER TABLE PaymentType ADD CONSTRAINT unique_name UNIQUE (name);
ALTER TABLE Payment MODIFY COLUMN type_id BIGINT NOT NULL, MODIFY COLUMN amount DECIMAL(10,2) NOT NULL, MODIFY COLUMN payment_date TIMESTAMP NOT NULL;