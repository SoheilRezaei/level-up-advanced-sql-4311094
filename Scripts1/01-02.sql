SELECT * FROM sales
SELECT * FROM employee

SELECT emp.firstName,
       emp.lastName,
       emp.title,
       emp.startDate,
       sls.salesId
FROM employee emp LEFT JOIN sales sls
ON sls.employeeId = emp.employeeId 
WHERE emp.title = 'Sales Person' 
AND sls.salesID IS NULL;