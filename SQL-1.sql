--INPUT
CREATE TABLE input_table  (
    ID SERIAL PRIMARY KEY,
    num VARCHAR(1) NOT NULL

INSERT INTO input_table (num)
VALUES
    (1),
    (2),
    (2),
    (2),
    (2),
    (1),
    (1),
    (1),
    (1);

--OUTPUT
SELECT DISTINCT num
FROM (    
    SELECT num,
           ROW_NUMBER() OVER () - ROW_NUMBER() OVER (PARTITION BY num ORDER BY id) AS out1
    FROM input_table) as a
GROUP BY num, out1
HAVING COUNT(*) >= 3;
