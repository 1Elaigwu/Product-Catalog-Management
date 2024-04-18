# Usage

To utilize the SQL scripts provided in this repository, follow these steps:

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/1Elaigwu/Product-Catalog-Management.git

2. **Connect to SQL Server Management Studio (SSMS)**:
   - Open SSMS and connect to your SQL Server instance where the myntra_products_catalog database is located.

3. **Execute SQL Scripts**:
   - Open and execute the scripts in SSMS.
   - Use Ctrl + Shift + E to execute selected queries in SSMS.

4 **Examples**:
- **Insert New Product Data**:
```sql
-- Example: Inserting a new product
INSERT INTO [dbo].[myntra_products] (ProductName, ProductBrand, Gender, Price_INR, NumImages, Description, PrimaryColor)
VALUES ('New Product', 'Brand X', 'Unisex', 99.99, 3, 'This is a new product', 'Red');
```

- **Update Pricing Information**:
```sql
-- Example: Updating product price
UPDATE [dbo].[myntra_products]
SET Price_INR = 109.99
WHERE ProductID = 1;
```

- **Delete Obsolete Records**:
```sql
-- Example: Deleting obsolete products
DELETE FROM [dbo].[myntra_products]
WHERE ProductID = 2; -- Delete product with ProductID = 2
```

Feel free to modify and adapt these SQL scripts based on your specific requirements and database configuration.
