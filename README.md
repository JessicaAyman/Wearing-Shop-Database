# Wearing Shop Database Management System 👗📊

This project is a comprehensive SQL Server database designed and implemented during the **Database Course at ITI (Information Technology Institute)**.

## 👥 The Team
* Jessica Ayman 
* Abdelrahman Ashraf
* Ahmed Abdelhafeez



## 🚀 Key Features & Technical Implementation

- **Database Design:** A normalized schema including tables for Users, Categories, Products, Options, Orders, Payments, and Promotions.
- **Data Integrity:** Implemented advanced Constraints (Unique, Check, Foreign Keys) to ensure data validity.
- **Automation (Triggers):** - `trg_reduce_stock`: Automatically updates inventory after each purchase.
  - `trg_check_stock`: Validates stock availability before processing orders.
- **Business Logic (Procedures & Transactions):** - `sp_Create_Order`: Manages the entire order process securely.
  - `sp_Apply_Promotion_To_Order`: Handles discount application with validation.
- **Advanced Logic:** Used **Cursors** for batch processing and **User-Defined Functions (UDFs)** to calculate remaining balances.
- **Analytics (Views):** Created specialized views for sales reporting and identifying best-selling products.

## 📂 Project Structure
- `Wearing_Shop_Creation_Query.sql`: Database schema and constraints.
- `Inserting_data_into_Wearing_Shop_database.sql`: Sample data for testing.
- `Stored_Procedures_for_Wearing_Shop_database.sql`: Core business logic.
- `function_triggers_cursor_for_Wearing_Shop_database.sql`: Advanced automation scripts.
- `views_forWear_Shop_database_.sql`: Reporting and data insights.
