CREATE TABLE Properties (
    PropertyID INT PRIMARY KEY AUTO_INCREMENT,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    State VARCHAR(100) NOT NULL,
    ZipCode VARCHAR(10) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL CHECK (Price > 0),
    Status ENUM('Available', 'Sold', 'Rented') NOT NULL,
    CommissionRate DECIMAL(5, 2) CHECK (CommissionRate BETWEEN 1 AND 15),
    ListingDate DATE NOT NULL DEFAULT CURRENT_DATE,
    UNIQUE (Address, City, ZipCode) -- Assuming properties can't have the same address in the same city
);
