create table auto
(
    id           int auto_increment
        primary key,
    model        varchar(255) null,
    horse_power  int          null,
    year         int          null,
    manufacturer varchar(255) null,
    type         varchar(255) null,
    eng_volume   double       null
);

INSERT INTO client.auto (id, model, horse_power, year, manufacturer, type, eng_volume) VALUES (1, 'glk', 250, 2017, 'mers', 'sedan', 2.5);
INSERT INTO client.auto (id, model, horse_power, year, manufacturer, type, eng_volume) VALUES (2, 'granta', 110, 2015, 'lada', 'sedan', 1.6);
INSERT INTO client.auto (id, model, horse_power, year, manufacturer, type, eng_volume) VALUES (3, 'e63 amg', 550, 2018, 'mers', 'sportcar', 5);
INSERT INTO client.auto (id, model, horse_power, year, manufacturer, type, eng_volume) VALUES (4, 'logan', 130, 2011, 'reno', 'coupe', 1.4);
INSERT INTO client.auto (id, model, horse_power, year, manufacturer, type, eng_volume) VALUES (5, 'c4', 160, 2016, 'citroen', 'universal', 2);
INSERT INTO client.auto (id, model, horse_power, year, manufacturer, type, eng_volume) VALUES (6, 'prius', 165, 2012, 'toyota', 'hatchback', 1.2);
INSERT INTO client.auto (id, model, horse_power, year, manufacturer, type, eng_volume) VALUES (7, 'a3', 180, 2003, 'audi', 'sedan', 2.4);
INSERT INTO client.auto (id, model, horse_power, year, manufacturer, type, eng_volume) VALUES (8, 'golf gti', 300, 2015, 'vw', 'hatchback', 2);
INSERT INTO client.auto (id, model, horse_power, year, manufacturer, type, eng_volume) VALUES (9, '350z', 350, 2007, 'nissan', 'sportcar', 3.6);
INSERT INTO client.auto (id, model, horse_power, year, manufacturer, type, eng_volume) VALUES (10, 'q7', 400, 2004, 'audi', 'suv', 4.8);
INSERT INTO client.auto (id, model, horse_power, year, manufacturer, type, eng_volume) VALUES (11, 'volga', 95, 1985, 'gaz', 'sedan', 2.5);
INSERT INTO client.auto (id, model, horse_power, year, manufacturer, type, eng_volume) VALUES (12, 'cherokee', 240, 2017, 'jeep', 'suv', 2.4);
INSERT INTO client.auto (id, model, horse_power, year, manufacturer, type, eng_volume) VALUES (13, 'm5 f90', 650, 2019, 'bmw', 'sedan', 5);
INSERT INTO client.auto (id, model, horse_power, year, manufacturer, type, eng_volume) VALUES (14, 'slr', 720, 2005, 'mers', 'sportcar', 7.5);
INSERT INTO client.auto (id, model, horse_power, year, manufacturer, type, eng_volume) VALUES (15, 'x5', 320, 2010, 'bmw', 'suv', 3.5);