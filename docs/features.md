# Key Features

This project provides a set of SQL scripts to facilitate efficient management of a product catalog within a database. The main features include:

1. **Insert New Product Data:**
   - Add new products to the catalog with specified attributes such as name, brand, gender, price, images, description, and primary color.

2. **Update Pricing Information:**
   - Modify the price of existing products based on the product ID.

3. **Delete Obsolete Records:**
   - Remove outdated products from the catalog based on a specified threshold price.

4. **View Product Catalog (vw_productCatalog):**
   - Access a virtual view (`vw_productCatalog`) that presents a consolidated list of product attributes (ProductID, ProductName, ProductBrand, Gender, Price_INR, NumImages, Description, PrimaryColor) for easy reference.

5. **Stored Procedures:**
   - `InsertNewProduct`: Stored procedure to insert new product data into the catalog.
   - `UpdateProductPrice_SP`: Stored procedure to update the price of a product and return the number of affected rows.
   - `DeleteObsoleteProducts`: Stored procedure to delete products with prices below a specified threshold.

6. **Scalar-Valued Function:**
   - `UpdateProductPrice`: Scalar-valued function to update the price of a product and return the number of affected rows.

7. **Database Schema:**
   - Utilizes a single table (`myntra_products`) with columns representing various product attributes.

These features enable effective management and maintenance of a product catalog database using SQL scripts, suitable for small to medium-scale e-commerce or retail applications.
