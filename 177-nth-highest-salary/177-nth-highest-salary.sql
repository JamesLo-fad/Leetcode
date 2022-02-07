CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE p INT;
SET p = N - 1;
RETURN (
    SELECT * FROM
     (SELECT DISTINCT Salary FROM Employee
      ORDER BY Salary DESC
      LIMIT 1 OFFSET p
     ) AS getNthHighestSalary);
END;