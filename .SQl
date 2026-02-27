SELECT emp_name, department, performance_score
FROM employees
ORDER BY performance_score DESC
LIMIT 5;
SELECT department, ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department;
SELECT department, ROUND(AVG(performance_score), 2) AS avg_performance
FROM employees
GROUP BY department
ORDER BY avg_performance DESC
LIMIT 1;
