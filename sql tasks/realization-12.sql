-- этот файл не сдаётся, но вы можете использовать его для своего кода
CREATE TABLE source_systems (
    id INTEGER NOT NULL,
    code CHAR (3),
    name VARCHAR (100),
    descr VARCHAR (255),
    PRIMARY KEY (id)
);

INSERT INTO source_systems
VALUES (1,'001','Moscow CRM' ,'Система по работе с клиентами в офисе в Москве');

INSERT INTO source_systems
VALUES (2,'002','SPB CRM' ,'Система по работе с клиентами в офисе в Санкт-Петербурге');

INSERT INTO source_systems
VALUES (3,'003','Online shop' ,'Онлайн-магазин компании');