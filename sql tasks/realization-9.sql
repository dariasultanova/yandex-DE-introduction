-- запрос за данными за май 2021
SELECT *
FROM client_activity
WHERE EXTRACT('month' from  invoice_month) = 5 
and EXTRACT('year' from invoice_month)=2021;

INSERT INTO invoice (customer_id, invoice_date, total)
VALUES (9, DATE '2021-05-01', 2);

SELECT *
FROM client_activity
WHERE EXTRACT('month' from  invoice_month) = 5 
and EXTRACT('year' from invoice_month)=2021;