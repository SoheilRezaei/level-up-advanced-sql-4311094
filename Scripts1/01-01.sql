SELECT emp.firstName,
       emp.lastName,
       emp.title,
       mng.firstName AS ManagerFirstName,
       mng.lastName AS ManagerLastName  
FROM employee emp
    INNER JOIN employee mng 
    WHERE emp.managerId = mng.employeeId

SELECT * FROM employee
