select * from books;

-- Windows Functions

-- ROW_NUMBER()

SELECT
ROW_NUMBER() OVER (
		PARTITION BY
			GENRE
		ORDER BY
			PRICE DESC
	) AS ROW_NUM,
	BOOK_ID,
	GENRE,
	PRICE
FROM
	BOOKS;


-------------------------------------

-- Dense_rank()

SELECT
Dense_rank() OVER (
		PARTITION BY
			GENRE
		ORDER BY
			PRICE DESC
	) AS Ranking,
	BOOK_ID,
	GENRE,
	PRICE
FROM
	BOOKS;


-----------------------------------

-- Rank()
SELECT
	RANK() OVER (
		PARTITION BY
			GENRE
		ORDER BY
			PRICE DESC
	) AS RANKs,
	BOOK_ID,
	GENRE,
	PRICE
FROM
	BOOKS;

/* 
✅ ROW_NUMBER() → When you need unique numbering (even for ties)

✅ DENSE_RANK() → When you need ranking with no gaps

✅ RANK() → When you need ranking with gaps if there's a tie

*/

-----------------------------------

-- SUM()

SELECT
	sum(price) OVER (
	partition by genre 
		ORDER BY
			PRICE DESC
	) AS running_total,
	BOOK_ID,
	GENRE,
	PRICE
FROM
	BOOKS;


-------------------------------------------

