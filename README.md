School Fees Management System
A web-based School Fees Management System built with PHP, MySQL, and deployed on AWS EC2. This system helps schools efficiently manage student fees,generate receipts, and track payment history.

Features
Student Management: Add, update, and remove student records.
Fee Collection: Record payments and track dues.
Receipt Generation: Generate and print receipts for payments.
Admin Dashboard: View payment statistics and manage users.
Secure Authentication: User login with role-based access.
AWS Deployment: Hosted on AWS EC2 with a MySQL database

Technologies Used
Backend: PHP, MySQL
Frontend: HTML, CSS, JavaScript
Database: MySQL
Deployment: AWS EC2, Apache

/school-fees-management
│── assets/            # CSS, JS, Images
│── dbcon.php          # Database connection file
│── index.php          # Homepage
│── login.php          # Admin login page
│── dashboard.php      # Admin dashboard
│── student.php        # Student management
│── fees.php           # Fees collection
│── receipt.php        # Receipt generation
│── README.md          # Project documentation

Installation & Setup
Clone the repository
Copy
Edit
git clone https://github.com/your-username/school-fees-management.git
cd school-fees-management
Setup Database

Import the SQL file into MySQL.

Update dbcon.php with your database credentials.

Run the Application

Start your Apache & MySQL server.

Open http://localhost/school-fees-management in your browser.

Deploy to AWS EC2

Setup an AWS EC2 instance.

Install Apache, PHP, and MySQL.

Upload project files and configure the database.

📸 Screenshots

📜 License
This project is licensed under the MIT License.
