 create database wearing_shop
 use wearing_shop
 --1
CREATE TABLE categories (
    category_id INT  PRIMARY KEY,
    category_name VARCHAR(50),
    descryption TEXT
);

-- constraint 1
-- مفيش فئة اسمها فاضي
alter table categories 
alter column category_name varchar(50) not null 
-- مفيش فئتين بنفس الاسم
alter table categories
add constraint unique_category_name unique (category_name)

--2
CREATE TABLE products (
    prod_id INT PRIMARY KEY,
    prod_name VARCHAR(50),
    price DECIMAL(18,0),
    description TEXT,
    gender VARCHAR(10),
    matrial VARCHAR(50),
    season VARCHAR(50)
);

--constraint 2
alter table products 
alter column prod_name varchar(50) not null

alter table products 
alter column price decimal (18,0) not null

--constraint 3
-- السعر مينفعش يبقى صفر أو سالب
alter table products 
add constraint check_product_price check(price >0)

-----1
alter table products 
add category_id int 
constraint fk_product_categories
foreign key(category_id) references categories(category_id)

--3
CREATE TABLE product_options (
    option_id INT  PRIMARY KEY,
    size VARCHAR(10),
    color VARCHAR(10),
    stock INT
);
--constriant 4
--مفيش stock بالسالب
alter table product_options
alter column stock int not null

alter table product_options
add constraint check_stock check(stock>=0)

--constraint 5 
-- نفس المنتج مينفعش يتكرر بنفس (size + color)
alter table product_options
add constraint unique_product_option 
unique (prod_id,size,color)

-----2
alter table product_options
add prod_id int
constraint fk_product_options_products foreign key (prod_id) references products(prod_id)

--4
CREATE TABLE prod_image (
    image_code INT  PRIMARY KEY, ---add identify
    prod_iamge IMAGE,
    prod_id INT
);
--make image_code identity

EXEC sp_help 'prod_image';

ALTER TABLE prod_image
DROP CONSTRAINT PK__prod_ima__21064F6754B8CBED  -- اسم الـ PK اللي ظهر عندك

alter table prod_image 
drop column image_code

alter table prod_image
add image_code int IDENTITY  primary key 

--constraint 6 

ALTER TABLE prod_image
ALTER COLUMN prod_id INT NOT NULL;
-- صورة واحدة لكل منتج
ALTER TABLE prod_image
ADD CONSTRAINT uq_prod_image UNIQUE (prod_id);

-----12
alter table prod_image
add constraint fk_prod_image_products 
foreign key (prod_id) references products(prod_id)

-----to make image_code identity
alter table prod_image
drop column image_code

alter table prod_image
add image_code int identity primary key

--5
CREATE TABLE promotions (
    promo_id INT  PRIMARY KEY,
    promo_name VARCHAR(50),
    type VARCHAR(30),
    discount_valu DECIMAL(18,0),
    start_date DATE,
    end_date DATE,
    conditions TEXT
);
-- constraint 7 
alter table promotions
alter column promo_name varchar(50) not null
alter table promotions
add constraint check_promo_discount
check (discount_valu>0)

-- constraint 8
--تاريخ البداية قبل النهاية
alter table promotions 
add constraint check_promo_dates check(start_date <end_date)

--6
CREATE TABLE product_promotion (
    prod_id INT NOT NULL,
    promo_id INT NOT NULL,
    PRIMARY KEY (prod_id, promo_id)
);

------10
alter table product_promotion
add constraint fk_product_promotions_promotions
foreign key (promo_id) references promotions (promo_id)
-----11
alter table product_promotion
add constraint fk_product_promotons_products
foreign key (prod_id) references products(prod_id)
--7
CREATE TABLE users (
    user_id INT  PRIMARY KEY,
    f_name VARCHAR(50),
    l_name VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(100),
    street VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    role VARCHAR(30)
);

--constraint 9
--مفيش إيميل مكرر
alter table users
alter column email varchar (100) not null
alter table users 
add constraint unique_users_email unique (email)

--constraint 10
-- الدور محدد
alter table users 
add constraint check_user_role check (role in ('admin','cutomer'));

-- hash password:
alter table users
drop column password

ALTER TABLE users
add  password VARBINARY(64);

--8
CREATE TABLE phones (
    user_id INT NOT NULL,
    phone VARCHAR(30) NOT NULL,
    PRIMARY KEY (user_id, phone)
);
--constraint 11
ALTER TABLE phones
ADD CONSTRAINT check_phone_length CHECK (LEN(phone) = 11);

-----13
alter table phones 
add constraint fk_phones_users
foreign key (user_id) references users(user_id)
--9
CREATE TABLE orders (
    order_id INT  PRIMARY KEY,
    order_date DATE,
    total_amount DECIMAL(18,0),
    status VARCHAR(50)
);

-----3
alter table orders
add user_id int 
constraint fk_orders_users 
foreign key (user_id) references users(user_id)

-- constraint for status
alter table orders
alter column status varchar (30) not null
alter table orders
add CONSTRAINT  check_order_status check
(status in ('pending',
    'confirmed',
    'partially_paid',
    'paid',
    'shipped',
    'delivered',
    'returned',
    'cancelled'))
--10
CREATE TABLE order_items (
    order_id INT NOT NULL,
    prod_id INT NOT NULL,
    quantity INT,
    price DECIMAL(18,0),
    PRIMARY KEY (order_id, prod_id)
);

--constraint 12
-- السعر و الكمية فوق الصفر
ALTER TABLE order_items
ALTER COLUMN quantity INT NOT NULL;

ALTER TABLE order_items
ADD CONSTRAINT chek_quantity CHECK (quantity > 0);

ALTER TABLE order_items
ADD CONSTRAINT chek_item_price CHECK (price > 0);
-----4
alter table order_items
add constraint fk_order_items_products 
foreign key (prod_id) references products(prod_id)
-----5
alter table order_items
add constraint fk_order_items_orders
foreign key (order_id) references orders(order_id)


-- هربط ال order_items ب product_options

ALTER TABLE order_items
DROP CONSTRAINT fk_order_items_products;

EXEC sp_helpconstraint 'order_items';

ALTER TABLE order_items
DROP CONSTRAINT PK__order_it__73303A820A37D7D0;

ALTER TABLE order_items
DROP COLUMN prod_id;


select * from order_items

ALTER TABLE order_items
ADD option_id INT NOT NULL;

ALTER TABLE order_items
ADD CONSTRAINT PK_order_items
PRIMARY KEY (order_id, option_id);

ALTER TABLE order_items
ADD CONSTRAINT fk_order_items_options
FOREIGN KEY (option_id) REFERENCES product_options(option_id);


--11
CREATE TABLE order_promotions (
    promo_id INT NOT NULL,
    order_id INT NOT NULL,
    PRIMARY KEY (promo_id, order_id)
);

------8 
alter table order_promotions 
add constraint fk_order_promotions_promotions
foreign key (promo_id) references promotions (promo_id)
-----9
alter table order_promotions 
add constraint fk_order_promotons_products
foreign key (order_id) references orders(order_id)

--12
CREATE TABLE payments (
    pay_id INT  PRIMARY KEY,
    pay_date DATE,
    amount DECIMAL(18,0),
    method VARCHAR(50)
);

--constrait 13
-- الكمية اكبر من الصفر
ALTER TABLE payments
ALTER COLUMN amount DECIMAL(18,0) NOT NULL;

ALTER TABLE payments
ADD CONSTRAINT chk_payment_amount CHECK (amount > 0);

-- constraint 14
-- قيم محدد لل method
ALTER TABLE payments
ADD CONSTRAINT chk_payment_method 
CHECK (method IN ('cash','credit','vodafone_cash','paypal'));

-----6
alter table payments
add order_id int
constraint fk_payments_orders
foreign key (order_id) references orders(order_id)

--13
CREATE TABLE shiping (
    shiping_id INT  PRIMARY KEY,
    street VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    ship_date DATE,
    delivery_date DATE
);

-- constraint 15
-- زمن التوصيل بعد زمن الشحن
ALTER TABLE shipping
ADD CONSTRAINT chk_shipping_dates 
CHECK (ship_date <= delivery_date);

-----7
EXEC sp_rename 'shiping', 'shipping';
alter table shipping 
add order_id int
constraint fk_shipping_orders
foreign key (order_id) references orders(order_id)