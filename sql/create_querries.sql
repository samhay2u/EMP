-- Develop a query that shows the top ten patient details that has spend most money on surjeries
-- SELECT P.MedRecNo, P.Name, P.DOB, P.Address, P.Insurance, SUM(H.CostOfVist) AS TOTAL_COST FROM patienthx AS H
-- INNER JOIN patients AS P
-- ON H.MedRecNo = P.MedRecNo
-- GROUP BY P.MedRecNo
-- ORDER BY TOTAL_COST DESC, P.Name
-- LIMIT 5
-- other aggregate functions maybe

-- SELECT * emp_no FROM EMPLOYEES WHERE salary in (Select salary from employees order by salary desc limit 5);
SELECT emp_no, CONCAT (FIRST_NAME, ' ', LAST_NAME ) as fullname, birth_date, hire_date, gender, salary from employees order by salary desc limit 5 
-- SELECT *, CONCAT(FIRSTNAME, ',', LASTNAME) AS FIRSTNAME FROM `customer`
