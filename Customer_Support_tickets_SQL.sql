select * from ticket

------Total Tickets by Type
--start
SELECT Ticket_Type, COUNT(*) AS Total_Tickets
FROM ticket
GROUP BY Ticket_Type
ORDER BY Total_Tickets DESC;
--End

------Top 5 Products with Most Tickets
--start
SELECT top 5 Product_Purchased, COUNT(*) AS Total_Tickets
FROM ticket
GROUP BY Product_Purchased
ORDER BY Total_Tickets DESC
--End

------Ticket Status Distribution
---start
SELECT Ticket_Status, COUNT(*) AS Status_Count
FROM ticket
GROUP BY Ticket_Status;
---End

------ Satisfaction by Gender 
---start
SELECT Customer_Gender, AVG(Customer_Satisfaction_Rating) AS Avg_Satisfaction
FROM ticket
GROUP BY Customer_Gender;
---End

------ Monthly Ticket Trends
--start
SELECT FORMAT(Date_of_Purchase, 'MMMM') AS Month ,COUNT(*) AS Total_Tickets
FROM ticket
GROUP BY FORMAT(Date_of_Purchase, 'MMMM')
ORDER BY FORMAT(Date_of_Purchase, 'MMMM')
--End


------  Age Grouping 
---Start
SELECT
  CASE
    WHEN Customer_Age BETWEEN 0 AND 20 THEN '0-20'
    WHEN Customer_Age BETWEEN 21 AND 30 THEN '21-30'
    WHEN Customer_Age BETWEEN 31 AND 40 THEN '31-40'
    WHEN Customer_Age BETWEEN 41 AND 50 THEN '41-50'
    WHEN Customer_Age BETWEEN 51 AND 60 THEN '51-60'
    WHEN Customer_Age BETWEEN 61 AND 70 THEN '61-70'
    ELSE '70+'
  END AS Age_Group,
  COUNT(*) AS Total_Tickets
FROM ticket
GROUP BY   CASE
    WHEN Customer_Age BETWEEN 0 AND 20 THEN '0-20'
    WHEN Customer_Age BETWEEN 21 AND 30 THEN '21-30'
    WHEN Customer_Age BETWEEN 31 AND 40 THEN '31-40'
    WHEN Customer_Age BETWEEN 41 AND 50 THEN '41-50'
    WHEN Customer_Age BETWEEN 51 AND 60 THEN '51-60'
    WHEN Customer_Age BETWEEN 61 AND 70 THEN '61-70'
    ELSE '70+'
  END 
ORDER BY Age_Group
---End