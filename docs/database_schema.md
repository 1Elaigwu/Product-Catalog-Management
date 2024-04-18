# Database Schema

This project utilizes a single table to represent the product catalog. Below is the schema for the `myntra_products` table:

| Column Name   | Data Type         | Description                            |
|---------------|-------------------|----------------------------------------|
| ProductID     | INT               | Unique identifier for each product.    |
| ProductName   | NVARCHAR(100)     | Name of the product.                   |
| ProductBrand  | NVARCHAR(50)      | Brand of the product.                  |
| Gender        | NVARCHAR(20)      | Gender category (e.g., Men, Women).    |
| Price_INR     | DECIMAL(10, 2)    | Price of the product in INR.          |
| NumImages     | INT               | Number of images associated with the product. |
| Description   | NVARCHAR(MAX)     | Description of the product.            |
| PrimaryColor  | NVARCHAR(20)      | Primary color of the product.          |

The `ProductID` column serves as the primary key for the table, ensuring each product has a unique identifier.
