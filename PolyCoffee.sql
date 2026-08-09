-- PolyCoffee database
CREATE DATABASE PolyCoffee;
GO

USE PolyCoffee;
GO

CREATE TABLE categories (
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName NVARCHAR(100) NOT NULL,
    Description NVARCHAR(255),
    Status BIT NOT NULL DEFAULT 1,
    CreatedDate DATE NOT NULL DEFAULT GETDATE()
);
GO

CREATE TABLE drinks (
    DrinkID INT IDENTITY(1,1) PRIMARY KEY,
    DrinkName NVARCHAR(150) NOT NULL,
    Price DECIMAL(18,2) NOT NULL,
    Image VARCHAR(255),
    Status BIT NOT NULL DEFAULT 1,
    CategoryID INT NOT NULL,
    CONSTRAINT FK_Drinks_Categories
        FOREIGN KEY (CategoryID) REFERENCES categories(CategoryID)
);
GO

CREATE TABLE users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    Username VARCHAR(50) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    Phone VARCHAR(20),
    Role BIT NOT NULL DEFAULT 0
);
GO

CREATE TABLE bills (
    BillID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT NOT NULL,
    BillDate DATETIME NOT NULL DEFAULT GETDATE(),
    TotalAmount DECIMAL(18,2) NOT NULL DEFAULT 0,
    Status BIT NOT NULL DEFAULT 1,
    PaymentMethod NVARCHAR(50),
    CONSTRAINT FK_Bills_Users
        FOREIGN KEY (UserID) REFERENCES users(UserID)
);
GO

CREATE TABLE bill_details (
    BillDetailID INT IDENTITY(1,1) PRIMARY KEY,
    BillID INT NOT NULL,
    DrinkID INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(18,2) NOT NULL,
    CONSTRAINT FK_BillDetails_Bills
        FOREIGN KEY (BillID) REFERENCES bills(BillID),
    CONSTRAINT FK_BillDetails_Drinks
        FOREIGN KEY (DrinkID) REFERENCES drinks(DrinkID)
);
GO
