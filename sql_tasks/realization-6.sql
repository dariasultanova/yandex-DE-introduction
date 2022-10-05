-- пишите код тут

SELECT * 
FROM client_activity ca
WHERE EXTRACT('month' from  invoice_month) = 6 
and EXTRACT('year' from invoice_month)=2021;

INSERT INTO invoice (customer_id, invoice_date, total)
VALUES (9, DATE '2021-06-01', 2);

SELECT * 
FROM client_activity ca
WHERE EXTRACT('month' from  invoice_month) = 6 
and EXTRACT('year' from invoice_month)=2021;