-- TaskHub Database Initialization
-- Version: 1.0
-- Generated: 2025-07-18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: task_management_db
CREATE DATABASE IF NOT EXISTS task_management_db;
USE task_management_db;

-- -----------------------------
-- Table: users
-- -----------------------------
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(50) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'employee') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (full_name, username, password, role) VALUES
('Admin User', 'admin', '$2y$10$TnyR1Y43m1EIWpb0MiwE8Ocm6rj0F2KojE3PobVfQDo9HYlAHY/7O', 'admin'),
('R.Raja', 'raja', '$2y$10$8xpI.hVCVd/GKUzcYTxLUO7ICSqlxX5GstSv7WoOYfXuYOO/SZAZ2', 'employee'),
('John', 'john', '$2y$10$CiV/f.jO5vIsSi0Fp1Xe7ubWG9v8uKfC.VfzQr/sjb5/gypWNdlBW', 'employee');

-- -----------------------------
-- Table: tasks
-- -----------------------------
CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    assigned_to INT,
    due_date DATE DEFAULT NULL,
    status ENUM('pending', 'in_progress', 'completed') DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (assigned_to) REFERENCES users(id)
);

INSERT INTO tasks (title, description, assigned_to, due_date, status) VALUES
('Monthly Financial Report', 'Prepare the monthly finance report.', 1, '2025-07-20', 'in_progress'),
('Client Database Update', 'Update client information.', 2, '2025-07-22', 'pending'),
('Website Revamp', 'Design new layout for website.', 3, '2025-07-25', 'pending');

-- -----------------------------
-- Table: notifications
-- -----------------------------
CREATE TABLE notifications (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message TEXT NOT NULL,
    recipient INT NOT NULL,
    type VARCHAR(50) NOT NULL,
    date DATE NOT NULL DEFAULT CURRENT_DATE,
    is_read TINYINT(1) DEFAULT 0
);

INSERT INTO notifications (message, recipient, type) VALUES
('New task assigned: Monthly Financial Report.', 1, 'Task Assigned'),
('Task update: Client Database Update.', 2, 'Task Updated'),
('Reminder: Website Revamp due soon.', 3, 'Reminder');

COMMIT;
