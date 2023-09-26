
SELECT DISTINCT num
FROM (    
    SELECT num,
           ROW_NUMBER() OVER () - ROW_NUMBER() OVER (PARTITION BY num ORDER BY id) AS out1
    FROM input_table) as a
GROUP BY num, out1
HAVING COUNT(*) >= 3;
