-- обновите представление и снова запросите данные за май 2021
REFRESH MATERIALIZED VIEW client_activity;

SELECT *
FROM client_activity
WHERE EXTRACT('month' from  invoice_month) = 5 
and EXTRACT('year' from invoice_month)=2021;