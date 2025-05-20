SELECT *
FROM Users
WHERE REGEXP_LIKE(email, '^[a-zA-Z_0-9]+@[a-zA-Z]+.com$')