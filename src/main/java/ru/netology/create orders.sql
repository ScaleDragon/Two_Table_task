create table ORDERS
(
    id           serial PRIMARY KEY,
    date         timestamp DEFAULT now(),
    customer_id  serial REFERENCES CUSTOMERS (id),
    product_name varchar(255),
    amount       INTEGER CHECK ( amount > 0 )
);

insert into ORDERS
(customer_id, product_name, amount)
values (1, 'vase', 1),
       (2, 'phone', 1),
       (3, 'car', 1),
       (1, 'magazine', 1);
