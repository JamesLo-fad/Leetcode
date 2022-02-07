# Write your MySQL query statement below

SELECT DISTINCT Num AS ConsecutiveNums FROM (
SELECT Num, 
LEAD(Num,1) OVER(ORDER BY id) AS lead1,
LEAD(Num,2) OVER(ORDER BY id) AS lead2
FROM Logs
) AS lg
WHERE Num = lead1
AND Num = lead2