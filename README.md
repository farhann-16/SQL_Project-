# SQL_Project-
📚 A relational database project for an online bookstore system using SQL. Includes tables for books, authors, customers, orders, and order details with foreign key relationships and sample data for practice.

````md
# 📚 SQL Project: Online Bookstore Database

This project simulates a relational database system for an online bookstore. It includes entities like **Books**, **Authors**, **Customers**, **Orders**, and **OrderDetails** — covering core concepts like table creation, foreign key relationships, data insertion, and complex SQL queries.

---

## 🧰 Tech Stack

- **Database**: MySQL / SQL Server
- **Tools**: MySQL Workbench / DB Browser / PostgreSQL
- **Concepts Used**: DDL, DML, Joins, Aggregates, Foreign Keys

---

## 🧱 Database Schema

### Tables:
- 📘 `Books` (book_id, title, genre, price, stock_qty)
- ✍️ `Authors` (author_id, name, country)
- 👤 `Customers` (customer_id, name, email, join_date)
- 🧾 `Orders` (order_id, customer_id, order_date, total_amount)
- 📦 `OrderDetails` (order_detail_id, order_id, book_id, quantity)

---

## 🧪 Sample Queries

- 🔍 View all books by genre  
- 🛒 Show order summary by customer  
- 📊 Aggregate total sales by each customer  
- 🔄 Join tables to view complete order and book info  
- 📉 List books running low on stock  

```sql
-- Total orders and amount by each customer
SELECT c.name, COUNT(o.order_id) AS total_orders, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;
````

---

## 📦 Sample Data Snippet

```sql
-- Books Table
INSERT INTO Books VALUES
(1, 'The Alchemist', 'Fiction', 299.99, 50),
(2, 'Clean Code', 'Programming', 550.00, 30);
```

---

## 🎯 Project Goals

* ✅ Understand table relationships using foreign keys
* ✅ Practice complex JOIN operations
* ✅ Apply filtering, grouping, and ordering in queries
* ✅ Create meaningful business insights from structured data

---

## 🧩 ER Diagram

![ER Diagram](er-diagram.png)

---

## 🚀 How to Run This Project

1. Clone this repo or copy SQL file into your local DB environment.
2. Run all `CREATE TABLE` statements to build the schema.
3. Insert sample data using `INSERT INTO` statements.
4. Test your queries and modify the data as needed.

---

## 📁 Folder Structure

```
📦 online-bookstore-sql/
┣ 📄 schema.sql
┣ 📄 sample-data.sql
┣ 📄 queries.sql
┣ 📄 README.md
┗ 🖼️ er-diagram.png
```

---

## 🤝 Let's Connect

🔗 https://www.linkedin.com/in/farhan16/
🐙 https://github.com/farhann-16

```

---

## 🧩 ER Diagram

Here’s your **ER Diagram** description for the image:

```

Books         Authors         Customers         Orders          OrderDetails

---

book\_id  ─────┐                              ┌──customer\_id    ┌──order\_id
title         │                              │                 │
genre         │                              │                 │
price         │                              │                 │
stock\_qty     │                              │                 │
│                              │                 │
│                              │                 │
▼                              ▼                 ▼
OrderDetails  ◄────────────── Orders ◄──────────── Customers
book\_id                          order\_id            customer\_id
order\_id
quantity

```
