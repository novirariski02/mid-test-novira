--INPUT

CREATE TABLE email_list (
    ID SERIAL PRIMARY KEY,
    email VARCHAR(100) NOT NULL
);

INSERT INTO email_list (email)
VALUES
    ('abc@gmail.com'),
    ('def@gmail.com'),
    ('abc@yahoo.com'),
    ('abc@gmail.com'),
    ('def@gmail.com'),
    ('def@gmail.com'),
    ('abc@bing.com');

--OUTPUT

SELECT email
FROM email_list
GROUP BY email
HAVING COUNT(email) > 1;