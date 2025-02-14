

create database  mall;
use mall;
create table sales (
	customer_id INT,
	customer_name VARCHAR(50),
	age INT,
	email VARCHAR(50),
	country VARCHAR(50),
	postal_code VARCHAR(50),
	purchase_amount DECIMAL(6,2),
	purchase_date DATE,
	product_category VARCHAR(11),
	payment_method VARCHAR(11)
);




select * from  sales;

(AGGRGET FUNCTION)

SELECT SUM(purchase_amount) AS total_sales FROM sales;


SELECT COUNT(*) AS total_transactions FROM sales;


SELECT AVG(purchase_amount) AS avg_purchase FROM sales;


SELECT MAX(purchase_amount) AS highest_purchase, MIN(purchase_amount) AS lowest_purchase FROM sales;


SELECT country, SUM(purchase_amount) AS total_sales
FROM sales
GROUP BY country;

select country, sum(purchase_amount) as total_sales
from sales 
group by country;


select * from sales;

select customer_name, email from sales;

select * from sales where country =  'Russia';

select* from  sales where purchase_amount <='100';


select*from sales where purchas_date >'2024-01-01';

SELECT * FROM sales WHERE purchase_date > '2023-01-01';


SELECT * FROM sales WHERE age BETWEEN 25 AND 40;

select * from sales where age between 20 and 25;

SELECT * FROM sales ORDER BY purchase_amount DESC LIMIT 5;

select * from sales order by purchase_amount desc limit 10;

select * from sales order by country desc limit 5

select * from sales;

SELECT * FROM sales ORDER BY purchase_amount DESC;


SELECT product_category, AVG(purchase_amount) AS avg_purchase
FROM sales
GROUP BY product_category;


SELECT country, SUM(purchase_amount) AS total_sales
FROM sales
GROUP BY country
HAVING SUM(purchase_amount) > 5000;


SELECT * FROM sales WHERE payment_method = 'Credit Card';           

SELECT * FROM sales;

select* from sales where payment_method = 'cash';

select* from sales where payment_method = 'paypal';

SELECT * FROM sales WHERE postal_code IS NULL;

select* from sales;

SELECT COUNT(*) AS postal_code FROM sales;

SELECT country, SUM(purchase_amount) AS total_sales FROM sales GROUP BY country;

SELECT product_category, max(purchase_amount) AS max_purchase FROM sales GROUP BY product_category;

select product_category, min(purchase_amount) as min_purchase from sales group by product_category;

select * from sales;

SELECT country, max(purchase_amount) AS max_sales
FROM sales
GROUP BY country;

SELECT country, SUM(purchase_amount) AS total_sales 
FROM sales 
GROUP BY country 
ORDER BY total_sales DESC 
LIMIT 5;

SELECT payment_method, COUNT(*) AS payment_count 
FROM sales 
GROUP BY payment_method 
HAVING COUNT(*) > 50;



SELECT customer_name, purchase_amount 
FROM sales 
ORDER BY purchase_amount DESC 
LIMIT 10;

select*from sales;

UPDATE sales SET purchase_amount = 250.75 
WHERE customer_id = 3;




BEGIN TRANSACTION;
UPDATE sales SET purchase_amount = 500 WHERE customer_id = 2;
COMMIT;

SELECT * FROM sales WHERE purchase_amount < 50 ORDER BY purchase_amount;




SELECT payment_method, COUNT(*) AS total_transactions 
FROM sales 
GROUP BY payment_method 
ORDER BY total_transactions DESC;



SELECT purchase_date, SUM(purchase_amount) AS daily_sales 
FROM sales 
GROUP BY purchase_date 
ORDER BY purchase_date;

SELECT MONTH(purchase_date) AS month, SUM(purchase_amount) AS total_sales 
FROM sales 
GROUP BY MONTH(purchase_date) 
ORDER BY month;


SELECT customer_name, SUM(purchase_amount) AS total_spent 
FROM sales 
GROUP BY customer_name 
ORDER BY total_spent DESC 
LIMIT 5;





SELECT 
    MONTH(purchase_date) AS month, 
    SUM(purchase_amount) AS total_sales 
FROM sales 
WHERE YEAR(purchase_date) = 2021
GROUP BY MONTH(purchase_date)
ORDER BY month;



SELECT customer_id, customer_name, SUM(purchase_amount) AS total_spent  
FROM sales  
GROUP BY customer_id, customer_name  
HAVING total_spent > 500  
ORDER BY total_spent DESC;