-- Use the specified database
USE [myntra_products_catalog];
GO

-- View existing data in myntra_products table
SELECT * FROM [dbo].[myntra_products];
GO

-- Create a view named vw_productCatalog
CREATE VIEW vw_productCatalog
AS
SELECT ProductID, ProductName, ProductBrand, Gender, Price_INR, NumImages, Description, PrimaryColor
FROM [dbo].[myntra_products];
GO

-- Create a stored procedure named InsertNewProduct
CREATE PROCEDURE InsertNewProduct
    @ProductName NVARCHAR(100),
    @ProductBrand NVARCHAR(50),
    @Gender NVARCHAR(20),
    @Price_INR DECIMAL(10, 2),
    @NumImages INT,
    @Description NVARCHAR(MAX),
    @PrimaryColor NVARCHAR(20)
AS
BEGIN
    INSERT INTO [dbo].[myntra_products] (ProductName, ProductBrand, Gender, Price_INR, NumImages, Description, PrimaryColor)
    VALUES (@ProductName, @ProductBrand, @Gender, @Price_INR, @NumImages, @Description, @PrimaryColor);
END;
GO

-- Create a scalar-valued function named UpdateProductPrice
CREATE FUNCTION UpdateProductPrice
    (@ProductID INT, @NewPrice DECIMAL(10, 2))
RETURNS INT
AS
BEGIN
    UPDATE [dbo].[myntra_products]
    SET Price_INR = @NewPrice
    WHERE ProductID = @ProductID;

    RETURN @@ROWCOUNT; -- Return the number of rows affected
END;
GO

-- Create a stored procedure named UpdateProductPrice_SP
CREATE PROCEDURE UpdateProductPrice_SP
    @ProductID INT,
    @NewPrice DECIMAL(10, 2),
    @RowsAffected INT OUTPUT
AS
BEGIN
    UPDATE [dbo].[myntra_products]
    SET Price_INR = @NewPrice
    WHERE ProductID = @ProductID;

    SET @RowsAffected = @@ROWCOUNT; -- Set the output parameter with the number of rows affected
END;
GO

-- Create a stored procedure named DeleteObsoleteProducts
CREATE PROCEDURE DeleteObsoleteProducts
    @ThresholdPrice DECIMAL(10, 2)
AS
BEGIN
    DELETE FROM [dbo].[myntra_products]
    WHERE Price_INR < @ThresholdPrice;
END;
GO

-- Example: Insert New Product Data
-- INSERT INTO [dbo].[myntra_products] (ProductID, ProductName, ProductBrand, Gender, Price_INR, NumImages, Description, PrimaryColor)
-- VALUES (1, 'New Product', 'Brand X', 'Unisex', 99.99, 3, 'This is a new product', 'Red');

-- Example: Update Pricing Information
-- UPDATE [dbo].[myntra_products]
-- SET Price_INR = 109.99
-- WHERE ProductID = 1;

-- Example: Delete Obsolete Records
-- DELETE FROM [dbo].[myntra_products]
-- WHERE ProductID = 2; -- Delete product with ProductID = 2
