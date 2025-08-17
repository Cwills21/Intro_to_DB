-- CREATE DATABASE
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- USE DATABASE
USE alx_book_store;

-- CREATE AUTHORS TABLE
CREATE TABLE Authors(
	author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

-- CREATE Books TABLE
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT NOT NULL,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- CREATE CUSTOMER TABLE
CREATE TABLE Customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT NOT NULL
);

-- CREATE ORDERS TABLE
CREATE TABLE Orders(
    Order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    Order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- CREATE ORDER_DETAILS TABLE
CREATE TABLE Order_Details(
    Order_detailid INT AUTO_INCREMENT PRIMARY KEY,
    Order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)    
);