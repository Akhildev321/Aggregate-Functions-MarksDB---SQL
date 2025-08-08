CREATE DATABASE MarksDB;
USE MarksDB;

CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,  
    name VARCHAR(50) NOT NULL,       
	 age INT DEFAULT 18,
    course VARCHAR(50),                        
    marks DECIMAL(5,2),                         
    grade CHAR(1)                    
);

-- Inserting sample data into Students table
INSERT INTO Students (name, age, course, marks, grade) VALUES
('Akhil Dev', 20, 'Math', 89.50, 'A'),
('Sneha Roy', 19, 'Science', 92.00, 'A'),
('Ravi Kumar', 21, 'History', 75.50, 'B'),
('Nikhil Jain', 18, 'Math', 68.00, 'C'),
('Ananya Das', 22, 'Science', 55.00, 'D'),
('Thala Dhoni', 24, 'Sports', NULL, NULL),
('Cherry Star', 23, 'Music', 88.00, 'B'),
('Raj Patel', 20, 'Math', 48.00, 'F'),
('Mahesh Babu', 22, 'Drama', 79.00, 'B'),
('Vamshi K', 19, 'Science', NULL, NULL);

-- Aggregate Functions 

-- 1. Counting total number of students
SELECT COUNT(*) AS total_students
FROM Students;

-- 2. Average marks of all students (excluding NULL marks)
SELECT AVG(marks) AS average_marks
FROM Students
WHERE marks IS NOT NULL;

-- 3. Highest marks scored
SELECT MAX(marks) AS highest_marks
FROM Students;

-- 4. Lowest marks scored
SELECT MIN(marks) AS lowest_marks
FROM Students;

-- 5. Total marks scored by all students
SELECT SUM(marks) AS total_marks
FROM Students
WHERE marks IS NOT NULL;

-- 6. Number of students in each course
SELECT course, COUNT(*) AS student_count
FROM Students
GROUP BY course;

-- 7. Average marks per course
SELECT course, AVG(marks) AS avg_marks
FROM Students
GROUP BY course;

-- 8. Courses with more than 2 students (HAVING example)
SELECT course, COUNT(*) AS student_count
FROM Students
GROUP BY course
HAVING COUNT(*) > 2;

-- 9. Average marks per grade (ignoring NULL grades)
SELECT grade, AVG(marks) AS avg_marks
FROM Students
WHERE grade IS NOT NULL
GROUP BY grade
ORDER BY avg_marks DESC;

-- 10. Count of students who have not received grades yet
SELECT COUNT(*) AS no_grade_count
FROM Students
WHERE grade IS NULL;
