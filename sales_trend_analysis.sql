
-- Monthly Revenue & Order Volume
SELECT 
  YEAR(order_date) AS year,
  MONTH(order_date) AS month,
  COUNT(DISTINCT order_id) AS order_volume,
  SUM(amount) AS monthly_revenue
FROM 
  online_sales
GROUP BY 
  YEAR(order_date), MONTH(order_date)
ORDER BY 
  year, month;

-- Top 3 Months by Revenue
SELECT 
  YEAR(order_date) AS year,
  MONTH(order_date) AS month,
  SUM(amount) AS monthly_revenue
FROM 
  online_sales
GROUP BY 
  YEAR(order_date), MONTH(order_date)
ORDER BY 
  monthly_revenue DESC
LIMIT 3;
