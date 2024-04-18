# Overview

The aim of this project is to provide SQL scripts for managing a product catalog within a database. The primary operations supported by these scripts are:

- **Inserting New Product Data:** Add new products to the catalog.
- **Updating Pricing Information:** Modify the price of existing products.
- **Deleting Obsolete Records:** Remove outdated products from the catalog.

## Dataset Information

The product catalog data used in this project was obtained from Kaggle. The dataset includes information about various products available on an e-commerce platform, such as product names,
brands, genders, prices, images, descriptions, and primary colors.

### Dataset Details:
- **Source:** Kaggle (https://www.kaggle.com/datasets/shivamb/fashion-clothing-products-catalog)
- **Columns:**
  - `ProductID`: Unique identifier for each product.
  - `ProductName`: Name of the product.
  - `ProductBrand`: Brand of the product.
  - `Gender`: Gender category (e.g., Men, Women).
  - `Price_INR`: Price of the product in INR.
  - `NumImages`: Number of images associated with the product.
  - `Description`: Description of the product.
  - `PrimaryColor`: Primary color of the product.

The SQL scripts in this repository are designed to interact with this dataset, enabling efficient management and maintenance of the product catalog database using SQL.

These scripts are intended to be executed in SQL Server Management Studio (SSMS) or a compatible database management tool. The project focuses on basic database management tasks using 
SQL for maintaining a product catalog efficiently.
