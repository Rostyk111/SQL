USE library;
SELECT * FROM book;

UPDATE book SET surname_autor = 'Winston' WHERE id = 3;
UPDATE book SET surname_autor = 'Brin' WHERE id = 9;

SELECT count(id) FROM book WHERE awards IS NOT NULL;

SELECT * FROM book WHERE pages = (SELECT min(pages) FROM book);

SELECT max(pages) FROM book;

SELECT avg(Price) FROM book;

SELECT sum(Price) FROM book WHERE category = 'romane';

SELECT min(Price) FROM book;
SELECT * FROM book WHERE Price = (SELECT min(Price) FROM book);

SELECT name_book, pages, round(Price,4) AS price FROM book ORDER BY name_book;

SELECT * FROM book ORDER BY publish_date limit 5, 5 ;
SELECT * FROM book ORDER BY publish_date limit 10, 6;

SELECT * FROM book WHERE name_author LIKE 'T%';
SELECT * FROM book WHERE name_book LIKE '%nn%';
SELECT * FROM book WHERE author_surname LIKE '%??z';

SELECT * FROM book WHERE Price BETWEEN 50 AND 120;
SELECT * FROM book WHERE Price NOT BETWEEN 200 AND 600;


DELETE FROM book WHERE id = 12;
DELETE FROM book WHERE name_book = 'Don Quixote';
DELETE FROM book WHERE isbn = '9789234217';