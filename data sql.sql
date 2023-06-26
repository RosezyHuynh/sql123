create database sale_info;

use sale_info;


CREATE TABLE my_buyer_profile (
    buyer_id BIGINT NOT NULL,
    birthday DATE NULL,
    gender INTEGER NOT NULL
);
    
CREATE TABLE my_order_trans (
    buyer_id BIGINT NOT NULL,
    gmv DOUBLE NOT NULL,
    is_brand INTEGER NULL,
    is_cross_border INTEGER NULL,
    is_lowest_price INTEGER NULL,
    is_new_purchase INTEGER NULL,
    item_rating DOUBLE NULL,
    l1_cat VARCHAR(55) NOT NULL,
    l2_cat VARCHAR(55) NOT NULL,
    on_campaign INTEGER NULL,
    order_date DATE NOT NULL,
    order_id BIGINT NOT NULL,
    order_status VARCHAR(55) NOT NULL,
    price DOUBLE NOT NULL,
    price_before_discount DOUBLE NOT NULL,
    product_id BIGINT NOT NULL,
    product_listed_on DATE NULL,
    product_name VARCHAR(55) NOT NULL,
    promo_code VARCHAR(55) NULL,
    qty_sold DOUBLE NOT NULL,
    return_status INTEGER NULL,
    shipping_fee_paid DOUBLE NULL,
    store_id BIGINT NOT NULL,
    var_id BIGINT NOT NULL
);

INSERT INTO my_buyer_profile VALUES(576123, '1997-12-08',2), (123152, '1996-06-12',1);
INSERT INTO my_order_trans VALUES(576123, 500000, 1,1,1,1,4.5,'Fashion', 'Women dress', 1, '2023-05-18', 32155, 'ACTIVE', 200000, 500000, 122, '2021-02-12', 'Pretty red dress', 'Shopee1212', 2, 1,1,999,789);
INSERT INTO my_order_trans VALUES(576123, 700000, 1,1,1,1,4.5,'Cosmetic', 'Perfume', 1, '2023-05-18', 32155, 'ACTIVE', 300000, 700000, 122, '2021-02-12', 'Versace', 'Shopee1212', 2, 1,1,888,677);
INSERT INTO my_order_trans VALUES(123152, 500000, 1,1,1,1,4.5,'Fashion', 'Women dress', 1, '2023-05-18', 32155, 'ACTIVE', 200000, 500000, 122, '2021-02-12', 'Pretty red dress', 'Shopee1212', 2, 1,1,999,789);
INSERT INTO my_order_trans VALUES(123152, 500000, 1,1,1,1,4.5,'Fashion', 'Women dress', 1, '2023-05-18', 32155, 'ACTIVE', 200000, 500000, 122, '2021-02-12', 'Pretty red dress', 'Shopee1212', 2, 1,1,999,789);
INSERT INTO my_order_trans VALUES(123152, 500000, 1,1,1,1,4.5,'Fashion', 'Women dress', 1, '2023-05-18', 32155, 'ACTIVE', 200000, 500000, 122, '2021-02-12', 'Pretty red dress', 'Shopee1212', 2, 1,1,999,789);
INSERT INTO my_order_trans VALUES(123152, 500000, 1,1,1,1,4.5,'Fashion', 'Women dress', 1, '2023-05-18', 32155, 'ACTIVE', 200000, 500000, 122, '2021-02-12', 'Pretty red dress', 'Shopee1212', 2, 1,1,999,789);
INSERT INTO my_buyer_profile values('576123', '2000-01-22', 1), ('123152', '2000-05-18', 0);

INSERT INTO my_order_trans VALUES(576123, 200, 1, 1, 1, 1, 4.5, 'Quần áo', 'Áo thun', 
1, '2023-05-15', 1, 'ACTIVE', 10000, 8000, 1, '2021-02-12', 'Áo nam cao cấp', '32818', 2, 1, 0, 1, 1);
INSERT INTO my_order_trans VALUES(123152, 300, 1, 1, 1, 1, 4.5, 'Giày dép', 'Dép lào', 
1, '2023-05-14', 1, 'ACTIVE', 50000, 4000, 1, '2021-02-12', 'Adidas Premium 2', '32818', 4, 1, 0, 1, 1);

INSERT INTO my_order_trans VALUES(576123, 500, 1, 1, 1, 1, 4.5, 'Giày dép', 'Nike', 
1, '2023-05-14', 1, 'ACTIVE', 80000, 6000, 1, '2021-02-12', 'Nike Running Boost', '32818', 2, 1, 0, 1, 1);

INSERT INTO my_order_trans VALUES(576123, 500, 1, 1, 1, 1, 4.5, 'Giày dép', 'Nike', 
1, '2023-05-14', 1, 'ACTIVE', 80000, 6000, 3, '2021-02-12', 'Nike Running Boost', '32818', 2, 1, 0, 1, 1);
