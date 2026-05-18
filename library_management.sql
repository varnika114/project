
CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    author VARCHAR(100),
    category VARCHAR(50),
    available_copies INT
);

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100),
    department VARCHAR(50),
    phone VARCHAR(15)
);

CREATE TABLE issued_books (
    issue_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    book_id INT,
    issue_date DATE,
    return_date DATE,

    FOREIGN KEY(student_id)
    REFERENCES students(student_id),

    FOREIGN KEY(book_id)
    REFERENCES books(book_id)
);
INSERT INTO books(title,author,category,available_copies)
VALUES
('Java Programming','James Gosling','Programming',5),
('Database Systems','Korth','Database',3),
('Python Basics','Guido Van Rossum','Programming',4),
('Operating Systems','Galvin','Computer Science',2);
INSERT INTO students(student_name,department,phone)
VALUES
('Varnika','CSE','9876543210'),
('Rahul','ECE','9876543211'),
('Priya','IT','9876543212');
INSERT INTO issued_books(student_id,book_id,issue_date,return_date)
VALUES
(1,1,'2026-05-01','2026-05-10'),
(2,2,'2026-05-02','2026-05-12'),
(3,3,'2026-05-03','2026-05-14');

SELECT * FROM books;