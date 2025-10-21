SELECT
  DATE_TRUNC('MONTH', FIRST_ORDER_DATE) AS month,
  COUNT(customer_id) AS new_customers
FROM {{ref("dim_customer")}}
WHERE
  DATE_PART('year', FIRST_ORDER_DATE) = DATE_PART('year', CURRENT_DATE) - 1
GROUP BY
  1
ORDER BY
  1 NULLS FIRST