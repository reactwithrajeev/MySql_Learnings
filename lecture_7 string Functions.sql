

-- String Functions 

-- UPPER()

SELECT UPPER(AUTHOR) AS AUTHOR_CAPS FROM BOOKS;

-- LOWER()

SELECT LOWER(GENRE) AS GENRE_LOWER FROM BOOKS;

-- LENGTH()

SELECT TITLE , LENGTH(TITLE) FROM BOOKS;
-- CONCAT()

SELECT CONCAT(AUTHOR,'-',GENRE) AS AUHTHOR_GENRE
FROM BOOKS;

-- SUBSTRING()

SELECT SUBSTRING(AUTHOR,1,6) FROM BOOKS;

-- TRIM()

select length('  Rajeev Kumar   '),length(trim('  Rajeev Kumar   ')) as trim_text_length;

-- REPLACE()

SELECT REPLACE(AUTHOR, 'Mario Moore',' Rajeev Kumar ')
FROM BOOKS;

select * from Books;