-- Contact Book Database
-- Author: Kelvin Kimotho Waruingi

DROP DATABASE IF EXISTS contactbook;
CREATE DATABASE contactbook;
USE contactbook;

CREATE TABLE `Groups` (
    group_id INT AUTO_INCREMENT PRIMARY KEY,
    group_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Contacts (
    contact_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    group_id INT,
    FOREIGN KEY (group_id) REFERENCES `Groups`(group_id)
);

-- Sample Data
INSERT INTO `Groups` (group_name) VALUES
('Family'),
('Friends'),
('Work');

INSERT INTO Contacts (name, email, phone, group_id) VALUES
('John Maina', 'john@gmail.com', '1234567890', 1),
('Denis mwangi', 'denis@proton.me', '9876543210', 2);
