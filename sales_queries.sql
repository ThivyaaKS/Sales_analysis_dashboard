-- Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Region;

-- Top States by Sales
SELECT State, SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY State
ORDER BY Total_Sales DESC;

-- Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Category;

-- Sales by Segment
SELECT Segment, SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Segment;
