
# Inventory Analysis System

## Description
The Inventory Analysis System is a simple MySQL project used to store and manage seller and inventory details. It helps to track product stock and analyze inventory information.

## Database
**Database Name:** `store_db`

## Tables
- **Seller** – Stores seller details such as name, email, phone, and address.
- **Inventory** – Stores product names, stock quantities, and seller details.

## Relationship
The `seller_id` in the Inventory table is a foreign key that references the `seller_id` in the Seller table.

**Relationship:** One Seller → Many Inventory Records

## Operations
- Database and table creation
- Sample data insertion
- CRUD operations
- Inventory analysis

## Inventory Analysis
The project is used to:
- Find total available products
- Identify out-of-stock products
- Find the highest stocked product
- Calculate average inventory quantity

## Technologies Used
- MySQL
- SQL
- MySQL Workbench

## Conclusion
This project provides a simple and efficient way to manage seller and inventory details and perform basic inventory analysis using SQL.
```
