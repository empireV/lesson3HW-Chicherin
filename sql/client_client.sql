create table client
(
    id      int auto_increment
        primary key,
    name    varchar(255) null,
    surname varchar(255) null,
    age     int          null,
    email   varchar(255) null,
    tel     int          null,
    sex     varchar(10)  null
);

INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (1, 'liza', 'liza', 18, 'liza@gmail.com', 123456, 'female');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (2, 'alex', 'alex', 21, 'alex@mail.iz', 654321, 'male');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (3, 'sasha', 'sasha', 20, 'sasha@mail.ua', 181818, 'male');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (4, 'viktor', 'viktor', 30, 'viktor@gmail.com', 444444, 'male');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (5, 'kate', 'kate', 23, 'kate@gmail.qwe', 565656, 'female');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (6, 'yuri', 'yuri', 35, 'yuri@gmail.com', 888886, 'male');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (7, 'vasya', 'vasya', 40, 'vasya@ukr.net', 555511, 'male');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (8, 'igor', 'xer', 55, 'igorx@mail.ua', 879452, 'male');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (9, 'serg', 'serg', 43, 'serg@gmail.l', 448725, 'male');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (10, 'toma', 'toma', 21, 'toma@mail.ru', 696969, 'female');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (11, 'vlad', 'molod', 22, 'vlad@gmail.com', 897941, 'male');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (12, 'alina', 'alina', 25, 'alina@mailg.com', 565657, 'female');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (13, 'vova', 'vova', 21, 'vova@gmail.com', 113113, 'male');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (14, 'artem', 'artem', 20, 'artem@gmail.ua', 987512, 'male');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (15, 'dasha', 'dasha', 28, 'dasha@gmail.mail', 936348, 'female');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (16, 'olga', 'olga', 19, 'olga@gmail.ua', 878425, 'female');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (17, 'dan', 'kol', 22, 'dank@mail.d', 752185, 'male');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (18, 'nastya', 'nastya', 18, 'nf@mail.ru', 724975, 'female');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (19, 'oleg', 'oleg', 6, 'oleg@gmail.k', null, 'male');
INSERT INTO client.client (id, name, surname, age, email, tel, sex) VALUES (20, 'ira', 'ira', 24, 'ira@ukr.fl', 850484, 'female');