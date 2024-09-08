-- Drop the Login table if it already exists
DROP TABLE IF EXISTS Login;

-- Create the Login table with proper constraints and data types
CREATE TABLE Login (
    customerId INT PRIMARY KEY,  -- Primary key for referencing customer
    lastLogin DATE NOT NULL,  -- Date of last login
    lastLogout DATE NOT NULL,  -- Date of last logout
    updatedPassword VARCHAR(100) NOT NULL,  -- Updated password (hashed)
    oldPassword VARCHAR(100) NOT NULL,  -- Old password (hashed)
    is_now_logged_in CHAR(1) NOT NULL CHECK (is_now_logged_in IN ('Y', 'N'))  -- Indicates if the user is currently logged in (Y/N)
);

-- Insert dummy data into the Login table
INSERT INTO Login (customerId, lastLogin, lastLogout, updatedPassword, oldPassword, is_now_logged_in) 
VALUES 
(1, '2024-09-01', '2024-09-02', 'newPasswordHash1', 'oldPasswordHash1', 'N'),
(2, '2024-09-03', '2024-09-04', 'newPasswordHash2', 'oldPasswordHash2', 'Y'),
(3, '2024-09-05', '2024-09-06', 'newPasswordHash3', 'oldPasswordHash3', 'N');

-- Describe the structure of the Login table
DESC Login;

-- Drop the Registration table if it already exists
DROP TABLE IF EXISTS Registration;

-- Create the Registration table with customer details and proper data types
CREATE TABLE Registration (
    customerId INT PRIMARY KEY,  -- Primary key for the customer
    customerName VARCHAR(100) NOT NULL,  -- Customer's full name
    email VARCHAR(100) NOT NULL UNIQUE,  -- Unique email address of the customer
    password VARCHAR(100) NOT NULL,  -- Customer's password (hashed)
    address VARCHAR(255) NOT NULL,  -- Customer's address
    contact VARCHAR(15) NOT NULL CHECK (contact REGEXP '^[0-9]+$')  -- Customer's contact number (numeric only)
);

-- Insert dummy data into the Registration table
INSERT INTO Registration (customerId, customerName, email, password, address, contact) 
VALUES 
(1, 'John Doe', 'john.doe@example.com', 'passwordHash1', '123 Main St, Springfield', '1234567890'),
(2, 'Jane Smith', 'jane.smith@example.com', 'passwordHash2', '456 Oak St, Metropolis', '0987654321'),
(3, 'Bob Johnson', 'bob.johnson@example.com', 'passwordHash3', '789 Pine St, Gotham', '1122334455');

-- Describe the structure of the Registration table
DESC Registration;
