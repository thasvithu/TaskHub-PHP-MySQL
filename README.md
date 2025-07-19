````markdown
# 📌 TaskHub - Task Management System

Welcome to **TaskHub**, an intuitive and efficient **Task Management System** built using **PHP**, **MySQL**, and **XAMPP**.  
Our platform empowers organizations to manage, assign, and monitor tasks with ease — designed for both **Admins** and **Employees**.

---

## 🚀 Project Overview

TaskHub simplifies task delegation and tracking within teams. The system features:

- 🧑‍💼 **Admin Panel:** Manage employees, assign tasks, and track overall progress.
- 👩‍💻 **Employee Dashboard:** View assigned tasks, update statuses, and manage personal progress.
- 🔔 **Notification System:** Stay informed with real-time task updates.
- 🔐 **Secure Authentication:** Role-based access ensuring data privacy and control.

---

## ✨ Core Features

✅ **User Role Management**  
Supports two distinct roles:
- **Admin:** Full control over tasks and users.
- **Employee:** Manage own tasks and update statuses.

✅ **Task Operations (CRUD)**  
- **Create, Read, Update, Delete tasks**
- Assign tasks to specific employees.

✅ **Task Categorization & Filtering**  
- Filter tasks by:
  - **Status**: pending, in_progress, completed
  - **Priority**
  - **Due Date**

✅ **Task Deadlines**  
- Set deadlines and track overdue tasks easily.

✅ **Authentication & Authorization**  
- Secure **login system** with role-based access control.

✅ **Notification System**  
- Automatic notifications for task assignments and updates.

---

## 🛠️ Requirements

Ensure your environment meets the following prerequisites:

- **XAMPP** (Apache, MySQL, PHP stack)
- **PHP 7.4 or higher**
- **MySQL 5.7 or higher**
- A modern web browser (Chrome, Firefox, etc.)

---

## 🔑 Default Login Credentials

| Role    | Username | Password |
|---------|----------|----------|
| Admin   | `admin`  | `123`     |
| Employee| `john`   | `123`     |

> ℹ️ **Note:** For enhanced security, update credentials upon setup.

---

## 📂 Project Setup

1. **Clone the Repository**
   ```
   git clone https://github.com/thasvithuTaskHub-PHP-MySQL.git
   ```

2. **Import the Database**
   - Locate the `task_management_db.sql` file.
   - Import it via **phpMyAdmin** or MySQL CLI.

3. **Configure Database Connection**
   - Update `DB_connection.php` with your local database credentials.

4. **Run the Application**
   - Start **XAMPP** services: Apache & MySQL.
   - Navigate to `http://localhost/TaskHub` in your browser.

---

## 🌟 Future Enhancements

- 📈 Analytics Dashboard for Admin
- 📅 Calendar View for task tracking
- 📧 Email Notifications
- 🗂️ File Attachments for tasks

---

## 🤝 Contributing

We welcome contributions!  
Feel free to fork this repository, propose improvements, or report issues via pull requests.

---

## 📜 License

This project is open-source and distributed under the **MIT License**.

---

**Developed with ❤️ by Team TaskHub**  
> Empowering teams to stay organized and productive.
````
