# Database Management System & CRUD API Project

## 📚 Project Overview

This project covers two major parts:

- **Question 1**: Build a complete relational **Library Management System** database using **MySQL**.
- **Question 2**: Create a **Contact Book API** using **Python (FastAPI)** connected to a **MySQL** database with full **CRUD** (Create, Read, Update, Delete) operations.

---

## 🧠 Question 1: Library Management System (Database)

### ✨ Features

- Store information about **Books**, **Authors**, **Members**, **Loans**.
- Proper relationships (one-to-many, many-to-many).
- Constraints such as **Primary Keys**, **Foreign Keys**, **Unique**, **Not Null**.

### Entity Relation Diagram
![Alt text here](Question-1-Database-SQL/erd.png)

### 📂 Files

- `Question-1-Database-SQL/library_management.sql` — Contains all **CREATE TABLE** statements and **sample data**.
- `Question-1-Database-SQL/ERD.png` — Entity Relationship Diagram for visualization.

### 📥 How to Setup

1. Open your MySQL environment (e.g., MySQL Workbench).
2. Import and run `library_management.sql`.
3. Your database will be created automatically with sample data.

---

## 💻 Question 2: Contact Book API (FastAPI + MySQL)

### ✨ Features

- Create, read, update, and delete **contacts**.
- Each contact has: `Name`, `Email`, `Phone`, and belongs to a `Group` (e.g., Friends, Work).
- Simple and fast RESTful API.

### 📂 Files

- `Question-2-CRUD-API/app/` — Main app code (FastAPI project structure).
- `Question-2-CRUD-API/create_contactbook_db.sql` — MySQL script to create the Contact Book database and tables.
- `requirements.txt` — Python libraries needed.

### 🚀 How to Run

#### 1. Install dependencies

- `Question-2-CRUD-API`
- `pip install -r requirements.txt`

## 2. Setup MySQL Database

### Create the database by running:

 - `mysql -u root -p < create_contactbook_db.sql`
![server running](Question-2-CRUD-API/screenshots/database.png)
## Start the server
 - `uvicorn app.main:app --reload`
 ![server running](Question-2-CRUD-API/screenshots/server_started.png)
 The API will run at: http://127.0.0.1:8000


## Testing my api endpoints using curl
#### Create a new group (e.g., hackers)
 ![create new group](Question-2-CRUD-API/screenshots/create_group.png)

#### Get all groups
![get all groups](Question-2-CRUD-API/screenshots/get_all_groups.png)

#### Create a new contact
![create new contact](Question-2-CRUD-API/screenshots/create_new_contact.png)

#### Get all contacts
![get all contacts](Question-2-CRUD-API/screenshots/get_all_contacts.png)

#### Get a contact by ID (e.g., id=1)
![get contact by id](Question-2-CRUD-API/screenshots/get_contact_by_id.png)

#### Update a contact
![update](Question-2-CRUD-API/screenshots/update_contact.png)

#### Delete a contact
![delete](Question-2-CRUD-API/screenshots/delete.png)

## Project Technologies
- `MySQL — Database`
- `FastAPI — Backend Framework`
- `SQLAlchemy — ORM for database access`
- `Uvicorn — ASGI Server`
- `Pydantic — Data validation`
- `Python 3.10+`