-- USE OnlineBookstore;

-- Insert sample books
INSERT INTO Books VALUES
(1, 'The Alchemist', 'Fiction', 299.99, 50),
(2, 'Clean Code', 'Programming', 550.00, 30),
(3, 'Atomic Habits', 'Self-help', 399.00, 40),
(4, 'Harry Potter', 'Fantasy', 499.99, 60);


-- Insert sample Authors
INSERT INTO Authors VALUES
(1, 'Paulo Coelho', 'Brazil'),
(2, 'Robert C. Martin', 'USA'),
(3, 'James Clear', 'USA'),
(4, 'J.K. Rowling', 'UK');


-- Insert sample Customers
INSERT INTO Customers VALUES
(1, 'Amit Patel', 'amit@email.com', '2024-05-01'),
(2, 'Sara Khan', 'sara@email.com', '2024-06-15');


-- Insert sample Orders
INSERT INTO Orders VALUES
(101, 1, '2024-06-20', 849.99),
(102, 2, '2024-06-25', 399.00);


-- Insert sample OrderDetails
INSERT INTO OrderDetails VALUES
(1001, 101, 2, 1),
(1002, 101, 4, 1),
(1003, 102, 3, 1);
