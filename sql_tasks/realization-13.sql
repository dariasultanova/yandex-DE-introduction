--этот файл не сдаётся, но вы можете использовать его для своего кода
CREATE TABLE "002_DM_clients" (
    client_id INTEGER NOT NULL,
    client_firstname VARCHAR (255),
    client_lastname VARCHAR (255),
    client_email VARCHAR (255),
    client_phone VARCHAR (255),
    client_city VARCHAR (255),
    PRIMARY KEY (client_id)
);

COPY "002_DM_clients" FROM '/lessons/3. Витрина наносит ответный удар/5. Как загрузить новый источник данных/Задание 2/clients.csv' DELIMITER ',' CSV HEADER;