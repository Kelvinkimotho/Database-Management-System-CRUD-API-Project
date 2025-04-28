-- Library Management System Database
-- Author: Kelvlin Kimotho Waruingi
-- Date: 28/04/2025

-- Droping the database if exists
DROP DATABASE IF EXISTS library_management;

-- Creating my database
CREATE DATABASE library_management;
USE library_management;

-- Creating database tables

CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    publication_year INT,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    membership_date DATE NOT NULL DEFAULT (CURRENT_DATE),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20)
);

CREATE TABLE Loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    member_id INT,
    loan_date DATE NOT NULL DEFAULT (CURRENT_DATE),
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

-- Inserting some data

-- Authors data
INSERT INTO Authors (name, email) VALUES 
('J.K. Rowling', 'jkrowling@gmail.com'),
('Ken waribora', 'ken@proton.me'),
('Junet maina', 'maina@gmail.com');

-- Books
INSERT INTO Books (title, isbn, publication_year, author_id) VALUES 
('Harry Potter and the Sorcerer', '9780747532699', 1997, 1),
('A Game of Thrones', '9780553103540', 1996, 2),
('The Hobbit', '9780618968633', 1937, 3);

-- Members
INSERT INTO Members (full_name, email, phone) VALUES
('Alice Johnson', 'alice@gmail.com', '1234567890'),
('Bob Smith', 'bob@gmail.com', '0987654321');

-- Loans
INSERT INTO Loans (book_id, member_id, loan_date, return_date) VALUES
(1, 1, '2025-04-01', '2025-04-15'),
(2, 2, '2025-04-05', NULL);
