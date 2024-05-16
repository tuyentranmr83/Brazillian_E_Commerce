create database Brazillian_E_Commerce
use Brazillian_E_Commerce

Create table Product
(
    [product_key] int not null primary key identity(1,1),
    [product_id] varchar(50),
    [product_category_name] varchar(50),
    [product_name_lenght] int,
    [product_description_lenght] int,
    [product_photos_qty] int,
    [product_weight_g] int,
    [product_length_cm] int,
    [product_height_cm] int,
    [product_width_cm] int
)
truncate table Product

CREATE TABLE Customer
(
    [customer_key] int not null primary key identity(1,1),
    [customer_id] varchar(50),
    [customer_unique_id] varchar(50),
    [customer_zip_code_prefix] int,
    [customer_city] varchar(50),
    [customer_state] varchar(50)
)
truncate table Customer
CREATE TABLE Sellers
(
    [seller_key] int not null primary key identity(1,1),
	[seller_id] varchar(50),
    [seller_zip_code_prefix] int,
    [seller_city] varchar(50),
    [seller_state] varchar(50)
)
truncate table Sellers
CREATE TABLE Orders

(
	[order_key] int not null primary key identity(1,1),
    [order_id] varchar(50),
    [customer_id] varchar(50),
    [order_status] varchar(50),
    [order_purchase_timestamp] datetime,
    [order_approved_at] datetime,
    [order_delivered_carrier_date] datetime,
    [order_delivered_customer_date] datetime,
    [order_estimated_delivery_date] datetime,
    [order_item_id] varchar(50),
    [product_id] varchar(50),
    [seller_id] varchar(50),
    [shipping_limit_date] datetime,
    [price] real,
    [freight_value] real,
    [payment_sequential] real,
    [payment_type] varchar(50),
    [payment_installments] real,
    [payment_value] real,
    [review_id] varchar(50),
    [review_score] real,
	[review_creation_date] datetime,
	[review_answer_timestamp] datetime,    
	[customer_key] int,
	[product_key] int,
	[seller_key] int

)
Drop table Orders
