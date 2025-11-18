SELECT contest_id, IFNULl(ROUND(COUNT(DISTINCT(user_id))*100/(SELECT COUNT(user_id) FROM Users),2),0) AS percentage
FROM Register 
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC;