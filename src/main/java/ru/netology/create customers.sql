create table CUSTOMERS
(
    id           serial PRIMARY KEY,
    name         varchar(255) not null CHECK ( name != '' ),
    surname      varchar(255) not null CHECK ( surname != '' ),
    age          INTEGER      not null CHECK (age > 0 and age < 120),
    phone_number varchar      not null UNIQUE
);

insert into CUSTOMERS
(name, surname, age, phone_number)
values ('alexey', 'Ivanov', '23', '78032138321'),
       ('Oleg', 'Romanov', '43', '7903452131'),
       ('Olya', 'Sky', '25', '78053428765'),
       ('Dmitri', 'Dmitriev', '54', '78213209234'),
       ('Anastasiya', 'Air', '65', '79153478907');
