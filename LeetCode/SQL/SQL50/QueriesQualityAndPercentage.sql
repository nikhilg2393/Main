SELECT query_name, IFNULL(ROUND(AVG(rating/position),2),0) AS quality, IFNULL(ROUND(AVG(IF(rating < 3,1,0))*100, 2),0) AS poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name;