-- Total orders by status
SELECT order_status, COUNT(*) AS total_orders
FROM customer_orders
GROUP BY order_status;

-- Total revenue (from completed payments)
SELECT SUM(payment_amount) AS total_revenue
FROM payments
WHERE payment_status = 'completed';

-- Monthly sales trend
SELECT  
  DATE_FORMAT(order_date, '%Y-%m') AS order_month,
  SUM(order_amount) AS monthly_sales
FROM customer_orders
GROUP BY order_month
ORDER BY order_month;








-- Repeat customers
SELECT customer_id, COUNT(order_id) AS order_count
FROM customer_orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;


-- Orders per customer
SELECT customer_id, COUNT(order_id) AS total_orders
FROM customer_orders
GROUP BY customer_id
ORDER BY total_orders DESC;













-- Payment status distribution
SELECT payment_status, COUNT(*) AS total_payments
FROM payments
GROUP BY payment_status;



-- Failed payments trend
SELECT 
  DATE_FORMAT('month', payment_date) AS month,
  COUNT(*) AS failed_payments
FROM payments
WHERE payment_status = 'failed'
GROUP BY month
ORDER BY month;



-- Joining order and payment info
SELECT 
  o.order_id, o.customer_id, o.order_date, o.order_amount, o.order_status,
  p.payment_date, p.payment_amount, p.payment_method, p.payment_status
FROM customer_orders o
LEFT JOIN payments p ON o.order_id = p.order_id;
