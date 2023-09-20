SELECT cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
FROM customer cus
INNER JOIN sales sls 
  ON cus.customerId = sls.customerId
UNION

SELECT cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
FROM customer cus
INNER JOIN sales sls 
  ON cus.customerId = sls.customerId
WHERE sls.salesId IS NULL

UNION
SELECT cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
FROM sales sls
INNER JOIN customer cus
  ON sls.customerId = cus.customerId
WHERE sls.salesId IS NULL


SELECT * FROM Customer
SELECT * FROM sales