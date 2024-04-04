SELECT MAX_TB.name AS Department, E.name as Employee, MAX_TB.max_salary as Salary
FROM Employee E
JOIN (SELECT E.departmentId, MAX(E.salary) AS max_salary, D.name
    FROM Employee E
    JOIN Department D
    ON E.departmentId = D.id
    GROUP BY E.departmentId) MAX_TB
ON E.departmentId = MAX_TB.departmentId 
WHERE E.salary = MAX_TB.max_salary;

