create table if not exists product_type (
    id bigint GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name varchar(50) NOT NULL,
    country varchar(50) NOT NULL,
    brand varchar(50) NOT NULL,
    is_online_order boolean,
    is_credit boolean,
    is_in_stock boolean
);

create table if not exists product_model (
    id bigint GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    product_type_id int NOT NULL REFERENCES product_type(id) ON DELETE CASCADE,
    name varchar(50) NOT NULL,
    serial_number int CHECK ( serial_number > 0 ) NOT NULL UNIQUE,
    color varchar(50) NOT NULL,
    size int CHECK ( size > 0 ) NOT NULL,
    price int CHECK ( price > 0 ) NOT NULL,
    is_in_stock boolean
);

create table if not exists product_model_attribute (
    id bigint GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    product_model_id int NOT NULL REFERENCES product_model (id) ON DELETE CASCADE,
    name varchar(50),
    value varchar(100)
);

insert into product_type(name, country, brand, is_online_order, is_credit, is_in_stock)
values ('TV', 'Japan', 'Sony', TRUE, TRUE, true),
       ('TV', 'Korea', 'LG', FALSE, TRUE, TRUE),
       ('TV', 'Japan', 'Panasonic', TRUE, FALSE, TRUE),
       ('Cleaner', 'Netherlands', 'Philips', TRUE, TRUE, true),
       ('Cleaner', 'Korea', 'Samsung', FALSE, TRUE, TRUE),
       ('Cleaner', 'Switzerland', 'Polaris', TRUE, FALSE, TRUE),
       ('fridge', 'Electrolux', 'Sweden', TRUE, TRUE, true),
       ('fridge', 'Korea', 'LG', FALSE, TRUE, TRUE),
       ('fridge', 'Italy', 'Smeg', TRUE, FALSE, TRUE),
       ('phone', 'Japan', 'Sony', TRUE, TRUE, true),
       ('phone', 'Korea', 'LG', FALSE, TRUE, TRUE),
       ('phone', 'USA', 'Apple', TRUE, FALSE, TRUE),
       ('computer', 'Japan', 'Sony', TRUE, TRUE, true),
       ('computer', 'Asus', 'Taiwan', FALSE, TRUE, TRUE),
       ('computer', 'USA', 'Apple', TRUE, FALSE, TRUE);

insert into product_model(product_type_id, name, serial_number, color, size, price, is_in_stock)
VALUES (1, 'KD55X', 12334567, 'black', 55, 90000, TRUE),
       (1, 'KD50X', 57463728, 'white', 50, 56000, false),
       (2, 'G2', 63565645, 'black', 77, 82000, TRUE),
       (2, 'C2', 13542656, 'grey', 67, 78000, TRUE),
       (3, 'TX', 87467677, 'black', 42, 40000, false),
       (3, 'TX-55', 67624573, 'blue', 55, 65000, TRUE),
       (4, 'FC9351', 85783563, 'red', 243, 13000, true),
       (4, 'FC9732', 67536636, 'grey', 212, 25000, TRUE),
       (5, 'sc4520', 36356266, 'green', 189, 9000, false),
       (5, 'sc5138', 24565678, 'blue', 195, 19000, TRUE),
       (6, 'pvcs 0725', 96753624, 'black', 201, 8000, TRUE),
       (6, 'pvc 2003', 25456577, 'black', 195, 7500, TRUE),
       (7, 'EN93852', 25667735, 'white', 2000, 50500, false),
       (7, 'en3487', 63573562, 'black', 1800, 43000, TRUE),
       (8, 'GW-B509', 37265653, 'silver', 1990, 45000, TRUE),
       (8, 'GW-B610', 26786473, 'gery', 1900, 55000, TRUE),
       (9, 'FAB5RDUJ5', 68437636, 'multicolor', 1500, 125000, TRUE),
       (9, 'MTE40', 65636363, 'black', 650, 49000, false),
       (10, 'xperia1', 36363632, 'black', 34, 30000, TRUE),
       (10, 'xperia-pro', 25636225, 'black', 40, 40000, TRUE),
       (11, 'w41', 26773562, 'black', 38, 7000, TRUE),
       (11, 'k62', 95787463, 'black', 41, 13000, TRUE),
       (12, 'iphone 12', 87463635, 'gold', 43, 70000, false),
       (12, 'iphone 14 pro', 25657453, 'black', 47, 130000, TRUE),
       (13, 'vaio pcg-71812', 47365652, 'black', 55, 90000, TRUE),
       (13, 'vaio pcg-71211', 62536362, 'grey', 55, 65000, TRUE),
       (14, 'F15', 37362562, 'black', 23, 73000, false),
       (14, 'A15', 62546366, 'silver', 21, 60000, TRUE),
       (15, 'macbook air 2019', 62525256, 'dark grey', 13, 90000, TRUE),
       (15, 'macbook pro M2', 36265377, 'black', 14, 210000, TRUE);

insert into product_model_attribute (product_model_id, name, value)
values (1, 'category', 'auto'),
       (1, 'technology', 'fast'),
       (2, 'category', 'not auto'),
       (2, 'technology', 'slow'),
       (3, 'category', 'auto'),
       (3, 'technology', 'fast'),
       (4, 'category', 'not auto'),
       (4, 'technology', 'slow'),
       (5, 'category', 'auto'),
       (5, 'technology', 'fast'),
       (6, 'category', 'not auto'),
       (6, 'technology', 'slow'),
       (7, 'dust container volume', '0,3'),
       (7, 'quantity of modes', '3'),
       (8, 'dust container volume', '0,4'),
       (8, 'quantity of modes', '2'),
       (9, 'dust container volume', '0,5'),
       (9, 'quantity of modes', '4'),
       (10, 'dust container volume', '0,25'),
       (10, 'quantity of modes', '5'),
       (11, 'dust container volume', '0,37'),
       (11, 'quantity of modes', '3'),
       (12, 'dust container volume', '0,42'),
       (12, 'quantity of modes', '4'),
       (13, 'quantity of doors', '1'),
       (13, 'typeEntity of compressor', 'inventor'),
       (14, 'quantity of doors', '1'),
       (14, 'typeEntity of compressor', 'inventor'),
       (15, 'quantity of doors', '1'),
       (15, 'typeEntity of compressor', 'line'),
       (16, 'quantity of doors', '2'),
       (16, 'typeEntity of compressor', 'inventor'),
       (17, 'quantity of doors', '2'),
       (17, 'typeEntity of compressor', 'line'),
       (18, 'quantity of doors', '1'),
       (18, 'typeEntity of compressor', 'line'),
       (19, 'phone memory', '64'),
       (19, 'quantity of cameras', '1'),
       (20, 'phone memory', '128'),
       (20, 'quantity of cameras', '3'),
       (21, 'phone memory', '256'),
       (21, 'quantity of cameras', '2'),
       (22, 'phone memory', '256'),
       (22, 'quantity of cameras', '2'),
       (23, 'phone memory', '128'),
       (23, 'quantity of cameras', '4'),
       (24, 'phone memory', '512'),
       (24, 'quantity of cameras', '4'),
       (25, 'category', 'laptop'),
       (25, 'typeEntity of processor', 'intel core i5'),
       (26, 'category', 'laptop'),
       (26, 'typeEntity of processor', 'intel core i3'),
       (27, 'category', 'laptop'),
       (27, 'typeEntity of processor', 'intel core i7'),
       (28, 'category', 'laptop'),
       (28, 'typeEntity of processor', 'AMD Ryzen'),
       (29, 'category', 'laptop'),
       (29, 'typeEntity of processor', 'intel core i5'),
       (30, 'category', 'laptop'),
       (30, 'typeEntity of processor', 'apple m2');

drop table product_model_attribute;
drop table product_model;
drop table product_type;

