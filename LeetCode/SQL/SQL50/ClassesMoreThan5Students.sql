SELECT class 
FROM courses 
Group by class Having Count(student) >= 5;