-- Change table 'Student'. 'birthday' field cannot be null
ALTER TABLE student MODIFY COLUMN birthday DATE NOT NULL;

-- Change table 'Mark'. 'mark' should be in range from 1 to 10. 'student_id' and 'subject_id' cannot be null
ALTER TABLE Mark MODIFY COLUMN mark INT NOT NULL CHECK (mark >= 1 AND mark <= 10), MODIFY COLUMN student_id BIGINT NOT NULL, MODIFY COLUMN subject_id BIGINT NOT NULL;

-- Change table 'Subject'. 'grade' should be in range from 1 to 5
ALTER TABLE Subject MODIFY COLUMN grade INT NOT NULL CHECK (grade >= 1 AND grade <= 5);

-- Change table 'PaymentType'. 'name' should be a unique value
ALTER TABLE PaymentType ADD CONSTRAINT unique_name UNIQUE (name);

-- Change table 'Payment'. 'type_id', 'amount', and 'payment_date' cannot be null
ALTER TABLE Payment MODIFY COLUMN type_id BIGINT NOT NULL, MODIFY COLUMN amount DECIMAL(10,2) NOT NULL, MODIFY COLUMN payment_date TIMESTAMP NOT NULL;