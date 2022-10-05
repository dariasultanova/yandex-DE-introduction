-- Поменяйте этот код
WITH t1 (client_id, fst_visit_dt, registration_dt, is_registration)
AS (
  SELECT client_id,
         DATE(MIN(CASE WHEN action = 'visit' THEN hitdatetime ELSE NULL END)) AS fst_visit_dt,
         DATE(MIN(CASE WHEN action = 'registration' THEN hitdatetime ELSE NULL END)) AS registration_dt,
         MAX(CASE WHEN action = 'registration' THEN 1 ELSE 0 END) AS is_registration
  FROM user_activity_log ual
  GROUP BY client_id
),
t2 (client_id, total_payment_amount)
AS (
  SELECT client_id,
         SUM(payment_amount) AS total_payment_amount
  FROM user_payment_log upl
  GROUP BY client_id
)
SELECT ua.client_id,
       utm_campaign,
       fst_visit_dt,
       registration_dt,
       is_registration,
	   total_payment_amount
FROM user_attributes AS ua
LEFT JOIN t1
ON ua.client_id = t1.client_id
LEFT JOIN t2
ON ua.client_id = t2.client_id;