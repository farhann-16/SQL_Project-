-- List all books with price > 400
SELECT * FROM Books WHERE price > 400;


-- Show order details for order ID 101
SELECT od.order_detail_id, b.title, od.quantity, b.price
FROM OrderDetails od
JOIN Books b ON od.book_id = b.book_id
WHERE od.order_id = 101;

-- Total sales by each customer
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;


-- Check stock of books below 40
SELECT * FROM Books WHERE stock_qty < 40;
