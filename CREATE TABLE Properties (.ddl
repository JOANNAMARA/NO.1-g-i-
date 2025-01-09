CREATE TABLE Properties (
    PropertyID INT PRIMARY KEY,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Type VARCHAR(50) CHECK (Type IN ('Residential', 'Commercial', 'Industrial')),
    Size INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Status VARCHAR(20) CHECK (Status IN ('Available', 'Sold', 'Rented'))
);