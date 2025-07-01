
-- Monthly adoption count
SELECT 
  TO_CHAR(adoption_date, 'YYYY-MM') AS month,
  COUNT(*) AS adoptions
FROM adoptions
WHERE adoption_date IS NOT NULL
GROUP BY month
ORDER BY month;

-- Adoption status breakdown
SELECT 
  status,
  COUNT(*) AS total,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 1) AS percent
FROM (
  SELECT
    a.animal_id,
    CASE
      WHEN ad.adoption_date IS NOT NULL AND ad.return_reason IS NULL THEN 'Adopted'
      WHEN ad.return_reason IS NOT NULL THEN 'Returned'
      ELSE 'Available'
    END AS status
  FROM animals a
  LEFT JOIN adoptions ad ON a.animal_id = ad.animal_id
) sub
GROUP BY status;
