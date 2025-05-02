-- 1. First clean up if tables exist (avoid errors)
DROP TABLE IF EXISTS Order_Products;
DROP TABLE IF EXISTS Orders;

-- 2. Create Orders table (fixed all issues)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL  -- Standardized length
);

-- 3. Create Order_Products table (correct syntax)
CREATE TABLE Order_Products (
    OrderID INT,
    Product VARCHAR(100) NOT NULL,  -- Fixed typo in VARCHAR
    Quantity INT NOT NULL DEFAULT 1,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)  -- Fixed reference
);

-- 4. Insert sample data (corrected values)
INSERT INTO Orders (OrderID, CustomerName) VALUES
(101, 'John Doe'),  -- Fixed: consistent ID format
(102, 'Jane Smith');

INSERT INTO Order_Products (OrderID, Product, Quantity) VALUES
(101, 'Laptop', 1),  -- Fixed: proper quotes
(101, 'Mouse', 2),   -- Fixed: product name spelling
(102, 'Monitor', 1);