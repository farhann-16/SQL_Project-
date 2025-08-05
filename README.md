````markdown
# 📚 SQL Projects Collection

This repository contains multiple SQL projects demonstrating **database design**, **data analysis**, and **complex queries**.  
Each project has its own folder with schema, data, and queries.

---

## 📌 Projects List

1. [🏥 Hospital Management System](#-hospital-management-system-sql-project)
2. [📚 Online Bookstore Database](#-sql-project-online-bookstore-database)

---

## ▶️ How to Use

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/sql-projects.git
   cd sql-projects
````

2. Navigate to the desired project folder.
3. Import the provided `.sql` files into your MySQL or PostgreSQL database.
4. Run queries using **MySQL Workbench**, **DB Browser**, or any SQL IDE.

---

## 🛠 Technologies Used

* SQL (MySQL / PostgreSQL)
* Database Design (ER Modeling)
* Advanced SQL Concepts (Joins, Subqueries, Stored Procedures, Indexing)

---

# 🏥 Hospital Management System (SQL Project)

A comprehensive **SQL-based database system** designed to manage hospital operations, including **patient registration, doctor scheduling, appointments, billing, and medical records**.

---

### 🎯 **Project Objective**

* Design and implement a **real-world hospital management database**.
* Showcase advanced **SQL concepts** like:

  * Joins
  * Subqueries
  * Stored Procedures
  * Indexes
  * Transactions
* Provide sample data and queries for analysis and reports.

---

### 📂 **Database Schema Overview**

**Tables**

1. **Patients** (`patient_id`, `name`, `gender`, `dob`, `contact`, `address`)
2. **Doctors** (`doctor_id`, `name`, `specialization`, `phone`, `availability`)
3. **Appointments** (`appointment_id`, `patient_id`, `doctor_id`, `appointment_date`, `status`)
4. **MedicalRecords** (`record_id`, `patient_id`, `diagnosis`, `prescription`, `visit_date`)
5. **Billing** (`bill_id`, `patient_id`, `appointment_id`, `amount`, `payment_status`, `payment_date`)

---

### 🖼 ER Diagram

```
[Patients]──< (patient_id) >──[Appointments]──< (doctor_id) >──[Doctors]
│                                │
│                                │
│                                ▼
└──────────< (patient_id) >──[MedicalRecords]

[Billing]──< (appointment_id) >──[Appointments]
```

*(Include `er-diagram.png` in the repo for better visualization.)*

---

### ✅ **Features Implemented**

✔ Patient Management (Add/Update/Delete)
✔ Doctor Management (Specialization, Availability)
✔ Appointment Scheduling
✔ Billing and Payment Tracking
✔ Medical Records History

---

### 🛠 **SQL Concepts Used**

* CRUD Operations
* JOIN Queries
* GROUP BY Aggregations
* Subqueries
* Stored Procedure for Billing
* Indexes on appointment dates
* Transactions for Atomic Operations

---

### 📂 **Repository Structure**

```
hospital-management-sql/
├── schema.sql               # Database schema (tables)
├── data.sql                 # Sample insert data
├── queries.sql              # Queries 
├── er-diagram.png           # ER diagram image
└── README.md
```

---

### 🔍 **Sample Queries**

**✅ List all Appointments with Patient and Doctor Details**

```sql
SELECT a.appointment_id, p.name AS patient_name, d.name AS doctor_name, a.appointment_date, a.status
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id;
```

**✅ Patients with Unpaid Bills**

```sql
SELECT name FROM Patients
WHERE patient_id IN (SELECT patient_id FROM Billing WHERE payment_status = 'Unpaid');
```

**✅ Total Revenue Per Doctor**

```sql
SELECT d.name AS doctor_name, SUM(b.amount) AS total_revenue
FROM Billing b
JOIN Appointments a ON b.appointment_id = a.appointment_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
GROUP BY d.name;
```

---

### 🚀 **How to Run**

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/hospital-management-sql.git
   ```
2. Import `schema.sql` and `data.sql` into your MySQL database.
3. Run queries from `queries.sql`.
4. Use **MySQL Workbench** or any SQL IDE.

---

# 📚 SQL Project: Online Bookstore Database

This project simulates a **relational database system for an online bookstore**. It includes entities like **Books**, **Authors**, **Customers**, **Orders**, and **OrderDetails** — covering core concepts like table creation, foreign key relationships, data insertion, and complex SQL queries.

---

### 🧰 **Tech Stack**

* Database: MySQL / SQL Server
* Tools: MySQL Workbench / DB Browser / PostgreSQL
* Concepts Used: DDL, DML, Joins, Aggregates, Foreign Keys

---

### 🧱 **Database Schema**

Tables:

* 📘 `Books` (book\_id, title, genre, price, stock\_qty)
* ✍️ `Authors` (author\_id, name, country)
* 👤 `Customers` (customer\_id, name, email, join\_date)
* 🧾 `Orders` (order\_id, customer\_id, order\_date, total\_amount)
* 📦 `OrderDetails` (order\_detail\_id, order\_id, book\_id, quantity)

---

### 🧪 **Sample Queries**

**🔍 View all books by genre**
**🛒 Show order summary by customer**
**📊 Aggregate total sales by each customer**
**🔄 Join tables to view complete order and book info**
**📉 List books running low on stock**

Example:

```sql
-- Total orders and amount by each customer
SELECT c.name, COUNT(o.order_id) AS total_orders, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;
```

---

## 🚀 Future Updates

✔ More SQL projects will be added soon! Stay tuned.

---

## 📜 License

This project is licensed under the **MIT License**.

---

## 👨‍💻 Author

Developed with ❤️ by **\[Your Name]**
🔗 [LinkedIn](https://www.linkedin.com/in/farhan16/)
🐙 [GitHub](https://github.com/farhann-16)

```

---
