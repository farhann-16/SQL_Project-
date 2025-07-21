CREATE DATABASE OnlineBookstore;
USE OnlineBookstore;

-- Create Books Table
CREATE TABLE Books (
  book_id INT PRIMARY KEY,
  title VARCHAR(100),
  genre VARCHAR(50),
  price DECIMAL(8, 2),
  stock_qty INT
);


-- Create Authors Table
CREATE TABLE Authors (
  author_id INT PRIMARY KEY,
  name VARCHAR(100),
  country VARCHAR(50)
);


-- Create Customers Table
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  join_date DATE
);


-- Create Orders Table
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


-- Create OrderDetails Table
CREATE TABLE OrderDetails (
  order_detail_id INT PRIMARY KEY,
  order_id INT,
  book_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

