SELECT e.name 
FROM EMPLOYEE e
INNER JOIN Employee m ON e.id=m.managerId
GROUP BY m.managerId
HAVING count(m.managerId)>=5