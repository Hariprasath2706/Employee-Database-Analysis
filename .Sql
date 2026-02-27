CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    job_title VARCHAR(50),
    salary DECIMAL(10,2),
    performance_score INT,
    joining_date DATE
);
INSERT INTO employees VALUES
(1, 'Arun Kumar', 'Sales', 'Sales Executive', 45000, 88, '2021-05-12'),
(2, 'Priya Sharma', 'HR', 'HR Manager', 70000, 91, '2020-03-09'),
(3, 'Ravi Patel', 'IT', 'Software Engineer', 85000, 95, '2019-11-20'),
(4, 'Meena Raj', 'Finance', 'Accountant', 60000, 80, '2022-02-15'),
(5, 'Karthik M', 'IT', 'System Analyst', 90000, 87, '2018-09-25'),
(6, 'Divya S', 'Sales', 'Sales Manager', 75000, 93, '2019-04-17'),
(7, 'Rahul T', 'Finance', 'Financial Analyst', 55000, 85, '2020-07-01'),
(8, 'Sneha Iyer', 'HR', 'Recruiter', 48000, 83, '2021-01-11'),
(9, 'Naveen R', 'IT', 'Software Engineer', 87000, 96, '2019-08-08'),
(10, 'Anjali Verma', 'Sales', 'Sales Executive', 46000, 90, '2022-06-23');
SELECT 
    department,
    ROUND(AVG(salary), 2) AS avg_salary,
    ROUND(AVG(performance_score), 2) AS avg_performance,
    MAX(performance_score) AS top_performance_score,
    (SELECT emp_name 
     FROM employees e2 
     WHERE e2.department = e1.department 
     ORDER BY e2.performance_score DESC 
     LIMIT 1) AS top_performer
FROM employees e1
GROUP BY department;
