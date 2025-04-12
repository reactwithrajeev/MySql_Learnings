select * from employee_data;

CREATE TABLE BOOKS(
Book_ID	SERIAL PRIMARY KEY,
Title	VARCHAR(150),
Author	VARCHAR(100),
Genre	VARCHAR(50),
Published_Year	INT,
Price	DECIMAL(10,2),
Stock	INT
)

COPY BOOKS (Book_ID,Title, Author,Genre,Published_Year,Price,Stock)
FROM 'C:/Data Analytics/MySql/Practice/ST - SQL ALL PRACTICE FILES/All Excel Practice Files/Books.csv'
DELIMITER ','
CSV HEADER;


-- Functions In SQL
-- Aggregate Functions 

-- COUNT()
SELECT
	COUNT(*) AS TOTAL_EMPLOYEES
FROM
	EMPLOYEE_DATA;


-- SUM()

SELECT
	GENRE,SUM(STOCK) AS TOTAL_STOCKS
FROM
	BOOKS
GROUP BY GENRE;

-- AVG()

SELECT GENRE, ROUND(AVG(PRICE),2) AS AVERAGE_PRICE FROM BOOKS
GROUP BY GENRE
ORDER BY AVG(PRICE) DESC;

-- MAX()
SELECT PUBLISHED_YEAR, MAX(PRICE)
FROM BOOKS 
GROUP BY PUBLISHED_YEAR
ORDER BY  MAX(PRICE) DESC LIMIT 10;

-- MIN()
SELECT PUBLISHED_YEAR,GENRE, MIN(PRICE)
FROM BOOKS 
GROUP BY PUBLISHED_YEAR, GENRE
ORDER BY  PUBLISHED_YEAR ASC LIMIT 10;

SELECT * FROM BOOKS;