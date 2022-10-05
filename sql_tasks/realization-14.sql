-- этот файл не сдаётся, но вы можете использовать его для своего кода
ALTER TABLE "002_DM_clients"
ADD age INTEGER;

UPDATE "002_DM_clients"
SET age = "002_BUFF_clients".age
FROM  "002_BUFF_clients"
WHERE "002_DM_clients".client_id = "002_BUFF_clients".client_id