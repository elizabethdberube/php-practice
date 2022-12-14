DROP DATABASE IF EXISTS book_db;

CREATE DATABASE book_db;

USE book_db;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name TEXT NULL,
email TEXT NULL,
password TEXT NULL,
updated_at DATE,
created_at DATE

);

DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
category_name TEXT NULL,
category_status enum ('Enable', 'Disable'),
category_created_on DATE,
category_updated_on DATE
   
);

DROP TABLE IF EXISTS books;
CREATE TABLE books (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
category_id INT NULL,
book_author TEXT NULL,
book_name TEXT NULL, 
book_isbn TEXT NULL,
book_no_of_copies INT NULL,
book_status enum ('Available', 'Unavailable'),
book_added_on DATE,
updated_at DATE,
FOREIGN KEY (category_id)
REFERENCES categories(id)
ON DELETE SET NULL
);

DROP TABLE IF EXISTS  bookcheckouts;
CREATE TABLE  bookcheckouts (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT NULL,
book_id INT NULL,
checkout_date DATE,
expected_return_date DATE NULL,
return_date DATE NULL,
book_fines INT NULL,
book_issue_status enum('Issue','Return','Not Return'),
updated_at DATE,
created_at DATE,
FOREIGN KEY ( book_id)
REFERENCES  books(id)
ON DELETE SET NULL,
FOREIGN KEY ( user_id)
REFERENCES  users(id)
ON DELETE SET NULL
);


