
CREATE DATABASE TechShop;
USE TechShop;
-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(255)
);

-- Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10,2)
);

-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- OrderDetails Table
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Inventory Table
CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY AUTO_INCREMENT,
    ProductID INT,
    QuantityInStock INT,
    LastStockUpdate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert sample data

-- Customers
INSERT INTO Customers (FirstName, LastName, Email, Phone, Address) VALUES
('John', 'Doe', 'john.doe@example.com', '1234567890', '123 Elm Street'),
('Jane', 'Smith', 'jane.smith@example.com', '2345678901', '456 Oak Avenue'),
('Robert', 'Johnson', 'robert.johnson@example.com', '3456789012', '789 Pine Lane'),
('Emily', 'Davis', 'emily.davis@example.com', '4567890123', '321 Cedar Road'),
('Michael', 'Brown', 'michael.brown@example.com', '5678901234', '654 Maple Street'),
('Sarah', 'Wilson', 'sarah.wilson@example.com', '6789012345', '987 Birch Avenue'),
('David', 'Taylor', 'david.taylor@example.com', '7890123456', '147 Spruce Drive'),
('Laura', 'Anderson', 'laura.anderson@example.com', '8901234567', '258 Poplar Street'),
('Daniel', 'Thomas', 'daniel.thomas@example.com', '9012345678', '369 Walnut Avenue'),
('Sophia', 'Moore', 'sophia.moore@example.com', '0123456789', '159 Chestnut Blvd');

-- Products
INSERT INTO Products (ProductName, Description, Price) VALUES
('Smartphone', 'Latest 5G smartphone with OLED display', 799.99),
('Laptop', '14-inch laptop with Intel i7 processor', 1199.99),
('Wireless Earbuds', 'Noise-cancelling wireless earbuds', 149.99),
('Smartwatch', 'Fitness tracking smartwatch', 199.99),
('Tablet', '10-inch Android tablet', 329.99),
('Gaming Console', 'Next-gen gaming console', 499.99),
('Bluetooth Speaker', 'Portable Bluetooth speaker', 79.99),
('External Hard Drive', '1TB external hard drive', 59.99),
('Wireless Mouse', 'Ergonomic wireless mouse', 29.99),
('Keyboard', 'Mechanical keyboard', 89.99);

-- Orders
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2025-04-01', 879.98),
(2, '2025-04-02', 329.99),
(3, '2025-04-03', 599.98),
(4, '2025-04-04', 529.98),
(5, '2025-04-05', 149.99),
(6, '2025-04-06', 499.99),
(7, '2025-04-07', 79.99),
(8, '2025-04-08', 209.98),
(9, '2025-04-09', 299.99),
(10, '2025-04-10', 1199.99);

-- OrderDetails
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES
(1, 1, 1),
(1, 3, 1),
(2, 5, 1),
(3, 2, 1),
(3, 9, 2),
(4, 4, 2),
(5, 3, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 2),
(9, 5, 1),
(10, 2, 1);

-- Inventory
INSERT INTO Inventory (ProductID, QuantityInStock, LastStockUpdate) VALUES
(1, 50, '2025-04-01'),
(2, 40, '2025-04-02'),
(3, 30, '2025-04-03'),
(4, 25, '2025-04-04'),
(5, 20, '2025-04-05'),
(6, 60, '2025-04-06'),
(7, 80, '2025-04-07'),
(8, 35, '2025-04-08'),
(9, 15, '2025-04-09'),
(10, 45, '2025-04-10');
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM OrderDetails;
SELECT * FROM Inventory;
