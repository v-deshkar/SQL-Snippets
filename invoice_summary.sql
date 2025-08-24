-- Monthly usage & charge rollup (example)
SELECT
  c.customer_id,
  FORMAT(e.event_start, 'yyyy-MM') AS bill_month,
  SUM(e.charge_amount) AS total_charges,
  SUM(e.usage_units)   AS total_units
FROM accumulated_usage_data e
JOIN customer_information c ON c.customer_id = e.customer_id
GROUP BY c.customer_id, FORMAT(e.event_start, 'yyyy-MM')
ORDER BY bill_month, c.customer_id;
