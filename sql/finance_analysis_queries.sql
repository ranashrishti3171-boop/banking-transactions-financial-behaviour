SELECT COUNT(*) AS Total_Transactions
FROM finance;
SELECT SUM(Amount) AS Total_Amount
FROM finance;
SELECT AVG(Amount) AS Average_Transaction
FROM finance;SELECT Customer_ID,
       Customer_Name,
       SUM(Amount) AS Total_Amount
FROM finance
GROUP BY Customer_ID, Customer_Name
ORDER BY Total_Amount DESC
LIMIT 10;
SELECT Branch,
       SUM(Amount) AS Total_Amount
FROM finance
GROUP BY Branch
ORDER BY Total_Amount DESC;
SELECT Channel,
       COUNT(*) AS Transactions
FROM finance
GROUP BY Channel;
SELECT Loan_Status,
       COUNT(*) AS Customers
FROM finance
GROUP BY Loan_Status;
SELECT MONTH(Date) AS Month,
       SUM(Amount) AS Total_Amount
FROM finance
GROUP BY MONTH(Date)
ORDER BY Month;
SELECT *
FROM finance
ORDER BY Amount DESC
LIMIT 1;
SELECT AVG(Credit_Score) AS Avg_Credit_Score
FROM finance;