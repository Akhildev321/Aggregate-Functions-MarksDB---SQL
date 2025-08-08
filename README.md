# 📊 MarksDB – Task 4: Aggregate Functions and Grouping

## 🎯 Objective
Practice **aggregate functions** and **grouping** in SQL to summarize and analyze student data.

---

## 🛠 Tools Used
- **MySQL Workbench**
- SQL (`COUNT`, `SUM`, `AVG`, `MAX`, `MIN`, `GROUP BY`, `HAVING`)

---

## 📂 Database Schema

**Database:** `MarksDB`  
**Table:** `Students`

| Column       | Type         | Description                          |
|--------------|-------------|--------------------------------------|
| student_id   | INT (PK)     | Unique Student ID                    |
| name         | VARCHAR(50) | Student's Full Name                   |
| age          | INT          | Age (default 18)                     |
| course       | VARCHAR(50) | Course Name                           |
| marks        | DECIMAL(5,2)| Marks (can be NULL)                   |
| grade        | CHAR(1)     | Grade (A–F, can be NULL)              |

---

## 📥 Sample Data

| student_id | name          | age | course   | marks | grade |
|------------|--------------|-----|----------|-------|-------|
| 1          | Akhil Dev    | 20  | Math     | 89.50 | A     |
| 2          | Sneha Roy    | 19  | Science  | 92.00 | A     |
| 3          | Ravi Kumar   | 21  | History  | 75.50 | B     |
| 4          | Nikhil Jain  | 18  | Math     | 68.00 | C     |
| 5          | Ananya Das   | 22  | Science  | 55.00 | D     |
| 6          | Thala Dhoni  | 24  | Sports   | NULL  | NULL  |
| 7          | Cherry Star  | 23  | Music    | 88.00 | B     |
| 8          | Raj Patel    | 20  | Math     | 48.00 | F     |
| 9          | Mahesh Babu  | 22  | Drama    | 79.00 | B     |
| 10         | Vamshi K     | 19  | Science  | NULL  | NULL  |

---
