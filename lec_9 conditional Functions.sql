

-- Conditional Functions

-- Case
select max(price) , min(price) from books;

SELECT 
    genre,
    price,
    CASE 
        WHEN price > 30 THEN 'Expensive'
        WHEN price >= 10 AND price <= 30 THEN 'Moderate'
        WHEN price < 10 THEN 'Cheap'
    END AS price_category
FROM 
    books;


-----------------------------

SELECT
	CASE
		WHEN PUBLISHED_YEAR <= 2000 THEN 'Antique'
		WHEN PUBLISHED_YEAR > 2000
		AND PUBLISHED_YEAR < 2010 THEN 'Old'
		WHEN PUBLISHED_YEAR > 2010 THEN 'New'
	END AS BOOK_TIME_CATEGORY,
	COUNT(DISTINCT BOOK_ID) AS TOTAL_BOOKS
FROM
	BOOKS
GROUP BY
	BOOK_TIME_CATEGORY
ORDER BY	TOTAL_BOOKS DESC;

---------------------------------------------
select book_id, title , 
case 
when stock >=20 then 'In_Stock'
when stock <20 And stock >=10 then 'Limited Stock'
when stock < 10 then 'Out Of Stock'
end as Available_Stock
from books;

---------------------------------------
select title , 
case 
when genre like '%phy' then 'Biography Book'
when genre like '%asy' then 'Fantasy Book'
when genre like '%ion' then 'Fiction Book'
when genre like 'Non%' then 'Non-Fiction Book'
when genre like '%nce' then 'Romance Book'
when genre like 'Sci%' then 'Science-fiction Book'
when genre like '%ery' then 'Mystery Book'
end as Book_category
from books;

-- Coalesce 


select * from books
WHERE 
    book_id IS NULL OR
    title IS NULL OR
    genre IS NULL OR
    price IS NULL OR
    published_year IS NULL or
	price is Null or
	stock is null or
	author is null;


alter table books 
add column discount_price decimal(10,2);

update books
set discount_price = price*0.9;

update books 
set discount_price = null
where book_id in (1,2,3,4);

SELECT
	BOOK_ID,
	PRICE,
	DISCOUNT_PRICE,
	COALESCE(DISCOUNT_PRICE, PRICE) AS FINAL_PRICE
FROM	BOOKS;

select * from books;
where genre is null;