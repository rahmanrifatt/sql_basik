-- show databases;
-- CREATE DATABASE soap_store;
-- CREATE DATABASE pet_shop;
-- CREATE DATABASE SlimeStore;
-- CREATE DATABASE chicken_coop;
-- DROP database SlimeStore;
--  USE chicken_coop;
-- select database();
-- USE pet_shop;
-- CREATE TABLE cats (
--     name VARCHAR(50),
--     age INT
-- );
-- CREATE TABLE dogs (
--     name VARCHAR(50),
--     breed VARCHAR(50),
--     age INT
-- );
-- SHOW tables;
-- SHOW COLUMNS FROM cats;
-- SHOW COLUMNS FROM dogs;
-- DESC cats;
-- DESC dogs;
-- DROP TABLE cats;
-- DROP TABLE dogs;

-- exersise
-- Create the table:
-- CREATE TABLE pastries
--   (
--     name VARCHAR(50),
--     quantity INT
--   );
-- View tables:
-- SHOW TABLES;
-- View details of pastries table:
-- DESC pastries;
-- Delete the whole pastries table:
-- DROP TABLE pastries;

-- insert data
-- CREATE TABLE cats (
--     name VARCHAR(50),
--     age INT
-- );
-- Insert a cat:
-- INSERT INTO cats (name, age) 
-- VALUES ('Blue Steele', 5);-- And another:
-- INSERT INTO cats (name, age) 
-- VALUES ('Jenkins', 7);
-- To view all rows in our table:
-- SELECT * FROM cats;

-- Single insert (switching order of name and age)
-- INSERT INTO cats (age, name) 
-- VALUES 
--   (2, 'Beth');

-- Multiple Insert:

-- INSERT INTO cats (name, age) 
-- VALUES 
--   ('Meatball', 5), 
--   ('Turkey', 1), 
--   ('Potato Face', 15);
--   SELECT * FROM cats;

-- INSERT Challenge Solution Code

-- CREATE TABLE people
--   (
--     first_name VARCHAR(20),
--     last_name VARCHAR(20),
--     age INT
--   );
-- INSERT INTO people(first_name, last_name, age)
-- VALUES ('Tina', 'Belcher', 13);
-- INSERT INTO people(age, last_name, first_name)
-- VALUES (42, 'Belcher', 'Bob');
-- INSERT INTO people(first_name, last_name, age)
-- VALUES
--     ('Linda', 'Belcher', 45),
--     ('Phillip', 'Frond', 38),
--     ('Calvin', 'Fischoeder', 70);
-- DROP TABLE people;
-- SELECT * FROM people;
-- SHOW TABLES;

-- Using NOT NULL:

-- CREATE TABLE cats2 ( -- name age can not be null
--     name VARCHAR(100) NOT NULL,
--     age INT NOT NULL
-- );
-- insert into cats2(name,age)values('bilbo',19);
-- select * from cats2;
-- desc cats2;

-- Define a table with a DEFAULT name specified:

-- CREATE TABLE cats3  (    
--     name VARCHAR(20) DEFAULT 'no name provided',    
--     age INT DEFAULT 99  
-- );
-- Notice the change when you describe the table:
-- DESC cats3;
-- Insert a cat without a name:
-- INSERT INTO cats3(age) VALUES(13);
-- Or a nameless, ageless cat:
-- INSERT INTO cats3() VALUES();

-- Combine NOT NULL and DEFAULT:

-- CREATE TABLE cats4  (    
--     name VARCHAR(20) NOT NULL DEFAULT 'unnamed',    
--     age INT NOT NULL DEFAULT 99 
-- );

-- One way of specifying a PRIMARY KEY

-- CREATE TABLE unique_cats (
-- 	cat_id INT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     age INT NOT NULL
-- );
-- desc unique_cats;
-- Another option:
-- CREATE TABLE unique_cats2 (
-- 	cat_id INT,
--     name VARCHAR(100) NOT NULL,
--     age INT NOT NULL,
--     PRIMARY KEY (cat_id)
-- );

--  AUTO_INCREMENT

-- CREATE TABLE unique_cats3 (
--     cat_id INT AUTO_INCREMENT,
--     name VARCHAR(100) NOT NULL,
--     age INT NOT NULL,
--     PRIMARY KEY (cat_id)
-- );
-- insert into unique_cats3(name,age) values('boingo',1),('tommy',5);
-- select * from unique_cats3;

-- exercise

-- Defining employees table

-- CREATE TABLE employees (
--     id INT AUTO_INCREMENT,
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL,
--     middle_name VARCHAR(255),
--     age INT NOT NULL,
--     current_status VARCHAR(255) NOT NULL DEFAULT 'employed',
--     PRIMARY KEY(id)
-- );
-- Another way of defining the primary key:

-- CREATE TABLE employees (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL,
--     middle_name VARCHAR(255),
--     age INT NOT NULL,
--     current_status VARCHAR(255) NOT NULL DEFAULT 'employed'
-- );
-- A test INSERT:
-- INSERT INTO employees(first_name, last_name, age) VALUES
-- ('Dora', 'Smith', 58);

-- CRUD

-- Drop the current cats table (if you have one)
-- DROP TABLE cats;
-- Create the new cats table:
-- CREATE TABLE cats (
--     cat_id INT AUTO_INCREMENT,
--     name VARCHAR(100),
--     breed VARCHAR(100),
--     age INT,
--     PRIMARY KEY (cat_id)
-- ); 
-- Insert some cats:
-- INSERT INTO cats(name, breed, age) 
-- VALUES ('Ringo', 'Tabby', 4),
--        ('Cindy', 'Maine Coon', 10),
--        ('Dumbledore', 'Maine Coon', 11),
--        ('Egg', 'Persian', 4),
--        ('Misty', 'Tabby', 13),
--        ('George Michael', 'Ragdoll', 9),
--        ('Jackson', 'Sphynx', 7);
-- To get all the columns:
-- SELECT * FROM cats;
-- To only get the age column:
-- SELECT age FROM cats;
-- To select multiple specific columns:
-- SELECT name, breed FROM cats;

-- Use where to specify a condition:

-- SELECT * FROM cats WHERE age = 4;
-- SELECT name,age FROM cats WHERE age = 4;
-- SELECT * FROM cats WHERE name ='Egg';
-- exercise
-- select cat_id from cats;
-- select name,breed from cats;
-- select name,age from cats where breed='Tabby';
-- select cat_id,age from cats where cat_id=age;

-- Use 'AS' to alias a column in your results (it doesn't actually change the name of the column in the table)
-- SELECT cat_id AS id, name FROM cats;

-- CODE: Updating Data
-- Change tabby cats to shorthair:
-- UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';
-- Another update:
-- UPDATE cats SET age=14 WHERE name='Misty';

-- exercise

-- CODE: Update Challenges Solution

-- SELECT * FROM cats WHERE name='Jackson'; 
-- UPDATE cats SET name='Jack' WHERE name='Jackson'; 
-- SELECT * FROM cats WHERE name='Jackson'; 
-- SELECT * FROM cats WHERE name='Jack'; 
-- SELECT * FROM cats WHERE name='Ringo'; 
-- UPDATE cats SET breed='British Shorthair' WHERE name='Ringo'; 
-- SELECT * FROM cats WHERE name='Ringo'; 
-- SELECT * FROM cats; 
-- SELECT * FROM cats WHERE breed='Maine Coon'; 
-- UPDATE cats SET age=12 WHERE breed='Maine Coon'; 
-- SELECT * FROM cats WHERE breed='Maine Coon';

-- delete

-- Delete all cats with name of 'Egg':
-- DELETE FROM cats WHERE name='Egg';
-- Delete all rows in the cats table:
-- DELETE FROM cats;

-- exercise

-- Delete all 4 year old cats:
-- DELETE FROM cats WHERE age=4;
-- Delete cats where cat_id is the same as their age:
-- DELETE FROM cats WHERE cat_id=age;
-- Delete all cats:
-- DELETE FROM cats;

-- CRUD challange

-- CREATE DATABASE shirts_db;
-- USE shirts_db;
-- CREATE TABLE shirts (
--     shirt_id INT AUTO_INCREMENT PRIMARY KEY,
--     article VARCHAR(50),
--     color VARCHAR(50),
--     shirt_size VARCHAR(5),
--     last_worn INT
-- );
-- DESC shirts;
-- INSERT INTO shirts (article, color, shirt_size, last_worn)  
-- VALUES 
-- 	('t-shirt', 'white', 'S', 10),
-- 	('t-shirt', 'green', 'S', 200),
-- 	('polo shirt', 'black', 'M', 10),
-- 	('tank top', 'blue', 'S', 50),
-- 	('t-shirt', 'pink', 'S', 0),
-- 	('polo shirt', 'red', 'M', 5),
-- 	('tank top', 'white', 'S', 200),
-- 	('tank top', 'blue', 'M', 15);
-- INSERT INTO shirts (article, color, shirt_size, last_worn)
-- VALUES ('polo shirt','purple', 'M', 50);
-- SELECT article, color FROM shirts;
-- SELECT * FROM shirts WHERE shirt_size='M';
-- SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size='M';
-- UPDATE shirts SET shirt_size = 'L'WHERE article = 'polo shirt';
-- UPDATE shirts SET last_worn = 0 WHERE last_worn = 15;
-- UPDATE shirts SET color = 'off white', shirt_size = 'XS' WHERE color = 'white';
-- SELECT * FROM shirts WHERE last_worn=200;
-- DELETE FROM shirts WHERE last_worn=200;
-- SELECT * FROM shirts WHERE article='tank top';
-- DELETE FROM shirts WHERE article='tank top';
-- SELECT * FROM shirts;
-- DELETE FROM shirts;
-- DROP TABLE shirts;
-- show tables;
-- DESC shirts;  

-- String function

-- CREATE DATABASE book_shop;
--  USE book_shop;
-- CREATE TABLE books 
-- 	(
-- 		book_id INT AUTO_INCREMENT,
-- 		title VARCHAR(100),
-- 		author_fname VARCHAR(100),
-- 		author_lname VARCHAR(100),
-- 		released_year INT,
-- 		stock_quantity INT,
-- 		pages INT,
-- 		PRIMARY KEY(book_id)
-- 	);

-- INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
-- VALUES
-- ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
-- ('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
-- ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
-- ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
-- ('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
-- ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
-- ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
-- ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
-- ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
-- ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
-- ('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
-- ("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
-- ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
-- ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
-- ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
-- ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);
-- select * from books;
-- CONCAT--
-- SELECT CONCAT('pi', 'ckle');
-- SELECT CONCAT(author_fname,' ', author_lname) AS author_name FROM books;
-- SELECT CONCAT_WS('-',title, author_fname, author_lname) FROM books;
-- SUBSTRING--
-- SELECT SUBSTRING('Hello World', 1, 4);
-- SELECT SUBSTRING('Hello World', 7);
-- SELECT SUBSTRING('Hello World', -3);
-- SELECT SUBSTRING(title, 1, 10) AS 'short title' FROM books;
-- SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;
-- combine concat + substring--
-- SELECT CONCAT(SUBSTRING(title, 1, 10),'...') AS 'short title' FROM books;

-- replace-- we have to remember that data wil not update--just change the way of look

-- SELECT REPLACE('Hello World', 'Hell', '%$#@');
-- SELECT REPLACE('Hello World', 'l', '7');
-- SELECT REPLACE('Hello World', 'o', '0');
-- SELECT REPLACE('HellO World', 'o', '*');
-- SELECT REPLACE('cheese bread coffee milk', ' ', ' and ');
-- SELECT REPLACE(title, 'e ', '3') FROM books;
-- SELECT REPLACE(title, ' ', '-') FROM books;

-- REVERSE--

-- SELECT REVERSE('Hello World');
-- SELECT REVERSE('meow meow');
-- SELECT REVERSE(author_fname) FROM books;
-- SELECT CONCAT('woof', REVERSE('woof'));
-- SELECT CONCAT(author_fname,' ',REVERSE(author_fname)) FROM books;

-- CHAR_LENGTH-- measured by character

-- SELECT CHAR_LENGTH('Hello World');
-- SELECT CHAR_LENGTH(title) as length, title FROM books;
-- SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;
-- SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;

-- LENGTH--measured by byte

-- SELECT LENGTH('Hello World');

-- UPPER=>UCASE/LOWER=>LCASE case--

-- SELECT UPPER('Hello World'); 
-- SELECT LOWER('Hello World');
-- SELECT UPPER(title) FROM books;
-- SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title),' !!!') FROM books;
-- SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;

-- others function--

-- SELECT INSERT('Hello Bobby', 6, 0, 'There'); 
-- SELECT INSERT('Hello Bobby', 6, 0, ' There'); 
-- SELECT INSERT('Hello Bobby', 6, 4, ' There'); 
-- SELECT LEFT('omghahalol!', 3);
-- SELECT RIGHT('omghahalol!', 4);
-- SELECT REPEAT('ha', 4);
-- SELECT TRIM('  pickle  ');-- trim is used for remove extra spaces starting and ending space
-- SELECT TRIM(Leading '.' from '.........pickle.........');
-- SELECT TRIM(trailing '.' from '.........pickle.........');
-- SELECT TRIM(both '.' from '.........pickle.........');

-- exercise-- 

-- SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));
-- select replace(concat('I', ' ', 'like',' ' ,'cats'),' ' ,'-');
-- SELECT REPLACE(title, ' ', '->') AS title FROM books;
-- SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards FROM books;
-- SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps' FROM books;
-- SELECT CONCAT(title, ' was released in ', released_year) AS blurb FROM books;
-- SELECT title, CHAR_LENGTH(title) AS character_count FROM books;
-- SELECT CONCAT(SUBSTR(title, 1, 10), '...') AS short_title,CONCAT(author_lname, ',', author_fname) AS author,CONCAT(stock_quantity, ' in stock') AS quantity FROM books;

-- REFINING SELECTION--

-- Adding sum new books--
-- INSERT INTO books
--     (title, author_fname, author_lname, released_year, stock_quantity, pages)
--     VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
--            ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
--            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
-- select * from books;

-- Distinct result-- 
-- SELECT author_lname FROM books;
-- SELECT DISTINCT author_lname FROM books;
-- SELECT author_fname, author_lname FROM books;
-- SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books;
-- SELECT DISTINCT author_fname, author_lname FROM books;

-- order by--

-- SELECT * FROM books ORDER BY author_lname;
-- SELECT * FROM books ORDER BY author_lname DESC;
-- SELECT * FROM books ORDER BY released_year;
-- SELECT * FROM books ORDER BY released_year DESC;
-- SELECT book_id, author_fname, author_lname, pages FROM books ORDER BY 2 desc;
-- SELECT concat( author_fname, author_lname) as author FROM books ORDER BY author;
-- SELECT book_id, author_fname, author_lname, pages FROM books ORDER BY author_lname, author_fname;

-- LIMIT--

-- SELECT title FROM books LIMIT 3;
-- SELECT book_id,title,released_year FROM books order by released_year LIMIT 5;
-- SELECT book_id,title,released_year FROM books order by released_year desc LIMIT 5;
-- SELECT title FROM books LIMIT 1;
-- SELECT title FROM books LIMIT 10;
-- SELECT * FROM books LIMIT 1;
-- SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;
-- SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 1;
-- SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 14;
-- SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0,5;
-- SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 1,5;
-- SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0,3;
-- SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 1,3;
-- SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 10,1;
-- SELECT * FROM tbl LIMIT 95,18446744073709551615;
-- SELECT title FROM books LIMIT 5;
-- SELECT title FROM books LIMIT 5, 123219476457;
-- SELECT title FROM books LIMIT 5, 50;

-- like--

-- SELECT title, author_fname, author_lname, pages FROM books WHERE author_fname LIKE '%da%';
-- SELECT title, author_fname, author_lname, pages FROM books WHERE title LIKE '%:%';
-- SELECT title, author_fname, author_lname, pages FROM books WHERE title LIKE '%';
-- SELECT * FROM books WHERE author_fname LIKE '____';
-- SELECT * FROM books WHERE author_fname LIKE '_a_';

-- escaping wildcart--

-- To select books with '%' in their title:
-- SELECT * FROM books WHERE title LIKE '%\%%';
-- To select books with an underscore '_' in title:
-- SELECT * FROM books WHERE title LIKE '%\_%';

-- exercise

-- SELECT title FROM books WHERE title LIKE '%stories%';
-- SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
-- SELECT CONCAT(title, ' - ', released_year) AS summary FROM books ORDER BY released_year DESC LIMIT 3;
-- SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';
-- SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity LIMIT 3;
-- SELECT title, author_lname FROM books ORDER BY author_lname, title;
-- SELECT title, author_lname FROM books ORDER BY 2,1;
-- SELECT CONCAT('MY FAVORITE AUTHOR IS ',UPPER(author_fname),' ',UPPER(author_lname),'!') AS yell FROM books ORDER BY author_lname;

-- Aggregate Functions--

-- SELECT COUNT(*) FROM books;
-- SELECT COUNT(author_lname) FROM books;
-- SELECT COUNT(DISTINCT author_lname) FROM books;

-- group by--

-- SELECT author_lname FROM books GROUP BY author_lname;
-- SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;
-- SELECT author_lname, COUNT(*) AS books_written FROM books GROUP BY author_lname ORDER BY books_written DESC;
-- SELECT released_year, COUNT(*)  FROM books GROUP BY released_year;

-- min / max without grroping

-- select count(*) from books;
-- SELECT min(released_year) FROM books;
-- SELECT MAX(pages) FROM books;
-- SELECT MIN(author_lname) FROM books;
-- SELECT MIN(author_lname),max(author_lname) FROM books;

-- sub query

-- SELECT title, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);
-- insert into books (title,pages)values('my life in word',634);
-- SELECT title, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);
-- SELECT MIN(released_year) FROM books;
-- SELECT title, released_year FROM books WHERE released_year = (SELECT MIN(released_year) FROM books); 

-- grouping by multiple columns

-- SELECT author_fname, author_lname FROM books;
-- SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY','')); -- for 1055 error
-- SELECT author_fname, author_lname FROM books GROUP BY author_lname;
-- SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;
-- SELECT  author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;
-- SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;
-- SELECT CONCAT(author_fname, ' ', author_lname) AS author,  COUNT(*) FROM books GROUP BY author;

-- min / max with grouping

-- SELECT author_lname, MIN(released_year) FROM books GROUP BY author_lname;
-- SELECT author_lname, max(released_year) FROM books GROUP BY author_lname;
-- SELECT author_lname, MAX(released_year), MIN(released_year) FROM books GROUP BY author_lname;
-- SELECT author_lname,COUNT(*) as books_written,MAX(released_year) AS latest_release,MIN(released_year) AS earliest_release,MAX(pages) AS longest_page_count FROM books GROUP BY author_lname;
-- SELECT author_lname,author_fname,COUNT(*) as books_written,MAX(released_year) AS latest_release,MIN(released_year)  AS earliest_release FROM books GROUP BY author_lname, author_fname;

-- sum

-- SELECT SUM(pages) FROM books;
-- SELECT author_lname, COUNT(*), SUM(pages) FROM books GROUP BY author_lname;

-- Avg

-- SELECT AVG(released_year) FROM books;
-- SELECT AVG(pages) FROM books;
-- SELECT AVG(stock_quantity) FROM books;
-- SELECT released_year, AVG(stock_quantity),COUNT(*) FROM books GROUP BY released_year;

-- exercise--
-- SELECT COUNT(*) FROM books;
-- SELECT released_year, COUNT(*) FROM books GROUP BY released_year;
-- select sum(stock_quantity) from books;
-- SELECT author_fname,author_lname, AVG(released_year) FROM books GROUP BY author_lname, author_fname;
-- SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);
-- SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books ORDER BY pages DESC LIMIT 1;
-- SELECT released_year AS year,COUNT(*) AS '# books',AVG(pages) AS 'avg pages'FROM books GROUP BY released_year ORDER BY released_year;

-- time and date--

-- CREATE TABLE people (
-- 	name VARCHAR(100),
--     birthdate DATE,
--     birthtime TIME,
--     birthdt DATETIME
-- );
-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00');
-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10');
-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');  

-- select *  from people;

-- SELECT CURTIME();
-- SELECT CURDATE();
-- SELECT NOW();
-- INSERT INTO people (name, birthdate, birthtime, birthdt) VALUES ('Hazel', CURDATE(), CURTIME(), NOW());
-- select *  from people;

-- SELECT 
--     birthdate,
--     DAY(birthdate),
--     DAYOFWEEK(birthdate),
--     DAYOFYEAR(birthdate)
-- FROM people;
-- SELECT 
--     birthdate,
--     MONTHNAME(birthdate),
--     YEAR(birthdate)
-- FROM people;

-- SELECT 
--     birthtime,
--     HOUR(birthtime),
--     MINUTE(birthtime)
-- FROM people;

-- SELECT 
--     birthdt,
--     MONTH(birthdt),
--     DAY(birthdt),
--     HOUR(birthdt),
--     MINUTE(birthdt)
-- FROM people;

-- SELECT birthdate, DATE_FORMAT(birthdate, '%a-%b-%D') FROM people;
-- SELECT birthdt, DATE_FORMAT(birthdt, '%H:%i') FROM people;
-- SELECT birthdt, DATE_FORMAT(birthdt, 'BORN ON: %r') FROM people; 

-- date math
-- datediff
-- select birthdate from people;
-- select curdate()from people;
-- select datediff(curdate(),birthdate) from people;
-- select birthdate, datediff(curdate(),birthdate) from people;
-- date_add
-- select date_add(curdate(),interval 12 year);
-- select date_add(curdate(),interval 11 month);
-- select date_sub(curdate(),interval 12 month);
-- select birthdate from people;
-- select birthdate,date_add(birthdate,interval 18 year) from people;
 -- select curtime();
 -- select timediff(curtime(),'7:00:00') ;
-- select now()- interval 18 year;
-- select name,birthdate from people;
-- select name,birthdate,birthdate + interval 21 year from people;
-- select name,birthdate,year(birthdate + interval 21 year) from people;

-- timestamps--

-- CREATE TABLE captions (
--   text VARCHAR(150),
--   created_at TIMESTAMP default CURRENT_TIMESTAMP
-- );
-- insert into captions(text)values('just me and the girls chillin');
-- insert into captions(text)values('beautyful sunset');
-- select * from captions;



-- CREATE TABLE captions2 (
--   text VARCHAR(150),
--   created_at TIMESTAMP default CURRENT_TIMESTAMP,
--   updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
-- );
-- insert into captions2(text)values('i love life');
--  select * from captions2;
-- SET SQL_SAFE_UPDATES = 0; -- for error 1175
-- update captions2 set text='i love live!!!!!!!';
-- select * from captions2;

-- exercise

-- What's a good use case for CHAR?

-- Used for text that we know has a fixed length, e.g., State abbreviations, 
-- abbreviated company names, etc.
 
-- CREATE TABLE inventory (
--     item_name VARCHAR(100),
--     price DECIMAL(8,2),
--     quantity INT
-- );
 
-- What's the difference between DATETIME and TIMESTAMP?

-- They both store datetime information, but there's a difference in the range, 
-- TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
-- TIMESTAMP is used for things like meta-data about when something is created
-- or updated.

-- SELECT CURTIME();
-- SELECT CURDATE();
-- SELECT DAYOFWEEK(CURDATE());
-- SELECT DAYOFWEEK(NOW());
-- SELECT DATE_FORMAT(NOW(), '%w') + 1;
-- SELECT DAYNAME(NOW());
-- SELECT DATE_FORMAT(NOW(), '%W');
-- SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
-- SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');
-- CREATE TABLE tweets(
--     content VARCHAR(140),
--     username VARCHAR(20),
--     created_at TIMESTAMP DEFAULT NOW()
-- );
-- INSERT INTO tweets (content, username) VALUES('this is my first tweet', 'coltscat');
-- SELECT * FROM tweets;
-- INSERT INTO tweets (content, username) VALUES('this is my second tweet', 'coltscat');
-- SELECT * FROM tweets;

-- logical operator--

-- SELECT * FROM books WHERE released_year != 2017;
-- select title,author_lname from books where author_lname ='Gaiman';
-- select title,author_lname from books where author_lname !='Gaiman';

-- SELECT * FROM books WHERE title  LIKE '% %';
-- SELECT * FROM books WHERE title not LIKE '% %';
-- select title,author_lname,author_fname from books where author_fname like 'da%';
-- select title,author_lname,author_fname from books where author_fname not like 'da%';
-- SELECT * FROM books WHERE title NOT LIKE '%e%';

-- SELECT * FROM books WHERE released_year > 2005;
-- SELECT * FROM books WHERE pages > 500; 

-- SELECT * FROM books WHERE pages < 200;
-- SELECT * FROM books WHERE released_year < 2000;
-- SELECT * FROM books WHERE released_year <= 1985;

-- SELECT title, author_lname, released_year FROM books WHERE released_year > 2010 AND author_lname = 'Eggers';
-- SELECT title, author_lname, released_year FROM books WHERE released_year > 2010 AND author_lname = 'Eggers' AND title LIKE '%novel%';
-- select title from books where char_length(title)>30;
-- select title from books where char_length(title)>30 and pages>500;
-- select title,pages from books where char_length(title)>30 and pages>500;

-- SELECT title, author_lname FROM books WHERE author_lname='Eggers' AND released_year > 2010;
-- SELECT title, author_lname, released_year FROM books WHERE author_lname='Eggers' OR released_year > 2010;
-- SELECT title, pages FROM books WHERE pages < 200 OR title LIKE '%stories%';

-- SELECT title, released_year FROM books WHERE released_year <= 2015 AND released_year >= 2004;
-- SELECT title, released_year FROM books WHERE released_year BETWEEN 2004 AND 2014;
-- SELECT title, pages FROM books WHERE pages BETWEEN 200 AND 300;
-- SELECT title, pages FROM books WHERE pages not BETWEEN 200 AND 300;

-- select * from people where birthdate <'2005-01-01';
-- select * from people where year(birthdate)<2005;
-- select * from people where birthtime >'09:00:00';
-- select * from people where hour(birthtime) >9;
-- select cast('9:00:00' as Time);
-- SELECT * FROM people WHERE birthtime BETWEEN CAST('12:00:00' AS TIME) AND CAST('16:00:00' AS TIME);
-- SELECT * FROM people WHERE HOUR(birthtime) BETWEEN 12 AND 16;

-- SELECT title, author_lname FROM books WHERE author_lname = 'Carver' OR author_lname = 'Lahiri' OR author_lname = 'Smith';
-- SELECT title, author_lname FROM books WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
-- SELECT title, author_lname FROM books WHERE author_lname NOT IN ('Carver', 'Lahiri', 'Smith');
-- SELECT title, released_year FROM books WHERE released_year >= 2000 AND released_year % 2 = 1;

-- SELECT title, released_year,
-- CASE
-- 	WHEN released_year >= 2000 THEN 'modern lit'
--     ELSE '20th century lit' 
-- END AS genre
-- FROM books;


-- SELECT 
--     title,
--     stock_quantity,
--     CASE
--         WHEN stock_quantity BETWEEN 0 AND 40 THEN '*'
--         WHEN stock_quantity BETWEEN 41 AND 70 THEN '**'
--         WHEN stock_quantity BETWEEN 71 AND 100 THEN '***'
--         WHEN stock_quantity BETWEEN 101 AND 140 THEN '****'
--         ELSE '*****'
--     END AS stock
-- FROM
--     books;


-- SELECT 
--     title,
--     stock_quantity,
--     CASE
--         WHEN stock_quantity <= 40 THEN '*'
--         WHEN stock_quantity <= 70 THEN '**'
--         WHEN stock_quantity <= 100 THEN '***'
--         WHEN stock_quantity <= 140 THEN '****'
--         ELSE '*****'
--     END AS stock
-- FROM
--     books;

 -- select * from books;
--  select * from books where author_lname is null;
--  select * from books where author_lname is not null;
-- select * from books where title is null;
-- delete from books where title is null;

-- exerxise--

-- SELECT * FROM books WHERE released_year < 1980;
-- SELECT * FROM books WHERE author_lname = 'Eggers' OR author_lname = 'Chabon';
-- SELECT * FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;
-- SELECT * FROM books WHERE pages >= 100 AND pages <= 200;
-- SELECT * FROM books WHERE pages BETWEEN 100 and 200;
-- SELECT title, author_lname FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';
-- SELECT title, author_lname FROM books WHERE SUBSTR(author_lname, 1, 1) in ('C', 'S');
-- SELECT title, author_lname,
-- CASE
--     WHEN title LIKE '%stories%' THEN 'Short Stories'
--     WHEN title = 'Just Kids' THEN 'Memoir' 
--     WHEN title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memior'
--     ELSE 'Novel'
-- END AS type
-- FROM books;

-- SELECT author_fname, author_lname,
-- 	CASE
--         WHEN COUNT(*) = 1 THEN '1 book'
--         ELSE CONCAT(COUNT(*), ' books')
-- 	END AS count
-- FROM books
-- WHERE author_lname IS NOT NULL
-- GROUP BY author_fname, author_lname;

-- 12 unique

-- CREATE TABLE contacts (
-- 	name VARCHAR(100) NOT NULL,
--     phone VARCHAR(15) NOT NULL UNIQUE
-- );

-- INSERT INTO contacts (name, phone)
-- VALUES ('billybob', '8781213455');
-- select * from contacts;
-- This insert would result in an error:
-- INSERT INTO contacts (name, phone)
-- VALUES ('timmy', '8781213455');

-- check

-- CREATE TABLE users (
-- 	username VARCHAR(20) NOT NULL,
--     age INT CHECK (age > 0)
-- );
-- insert into users(username,age)values('bluethecat',50);
-- insert into users(username,age)values('coltsteel',-3);

-- CREATE TABLE palindromes (
--   word VARCHAR(100) CHECK(REVERSE(word) = word)
-- );
-- insert into palindromes(word)values('racecar');
-- insert into palindromes(word)values('mommy');

-- named constrained

-- CREATE TABLE users2 (
--     username VARCHAR(20) NOT NULL,
--     age INT,
--     CONSTRAINT age_not_negative CHECK (age >= 0)
-- );
-- insert into users2(username,age)values('chickenlady',-9);
-- CREATE TABLE palindromes2 (
--   word VARCHAR(100),
--   CONSTRAINT word_is_palindrome CHECK(REVERSE(word) = word)
-- );
-- insert into palindromes2(word)values('mom');   
-- insert into palindromes2(word)values('momy'); 
  
-- multiple constraint

-- CREATE TABLE companies (
--     name VARCHAR(255) NOT NULL,
--     address VARCHAR(255) NOT NULL,
--     CONSTRAINT name_address UNIQUE (name , address)
-- );
-- insert into companies(name,address)values('blackbird auto','123 spruce');
-- insert into companies(name,address)values('luigis pies','123 spruce');
-- insert into companies(name,address)values('luigis pies','123 spruce');
-- CREATE TABLE houses (
--   purchase_price INT NOT NULL,
--   sale_price INT NOT NULL,
--   CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
-- );
-- insert into houses(purchase_price,sale_price) values(100,200);
-- insert into houses(purchase_price,sale_price) values( 300,250);

-- alter table

-- select * from companies; 
-- ALTER TABLE companies 
-- ADD COLUMN phone VARCHAR(15);
-- select * from companies; 

-- ALTER TABLE companies
-- ADD COLUMN employee_count INT NOT NULL DEFAULT 1;
-- select * from companies; 

-- ALTER TABLE companies DROP COLUMN phone;
-- select * from companies; 
-- ALTER TABLE companies DROP COLUMN employee_count;
-- select * from companies; 

-- table rename
 -- rename table companies to suppliers;
-- select * from companies; 
 -- select * from suppliers; 

 -- ALTER TABLE suppliers rename TO companies;
--  show tables;

-- desc companies;
-- ALTER TABLE companies
-- RENAME COLUMN name TO company_name;
-- desc companies;

-- ALTER TABLE companies
-- MODIFY company_name VARCHAR(100) DEFAULT 'unknown';
-- desc companies;

-- insert into companies(address)values('255 rose lane');
-- select * from companies;

-- changing columns
-- alter table suppliers change business biz_name varchar(50);

-- ALTER TABLE houses 
-- ADD CONSTRAINT positive_pprice CHECK (purchase_price >= 0);
-- insert into houses(purchase_price,sale_price) values( -1,4);

-- alter table houses drop constraint positive_pprice;
-- insert into houses(purchase_price,sale_price) values( -1,4);
-- select * from houses;

-- relation
-- create database shop;
-- use shop;
-- CREATE TABLE customers (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     email VARCHAR(50)
-- );

-- CREATE TABLE orders (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     order_date DATE,
--     amount DECIMAL(8,2),
--     customer_id INT,
--     FOREIGN KEY (customer_id) REFERENCES customers(id)
-- );

-- INSERT INTO customers (first_name, last_name, email) 
-- VALUES ('Boy', 'George', 'george@gmail.com'),
--        ('George', 'Michael', 'gm@gmail.com'),
--        ('David', 'Bowie', 'david@gmail.com'),
--        ('Blue', 'Steele', 'blue@gmail.com'),
--        ('Bette', 'Davis', 'bette@aol.com');
--        
--        
-- INSERT INTO orders (order_date, amount, customer_id)
-- VALUES ('2016-02-10', 99.99, 1),
--        ('2017-11-11', 35.50, 1),
--        ('2014-12-12', 800.67, 2),
--        ('2015-01-03', 12.50, 2),
--        ('1999-04-11', 450.25, 5);

-- cross join

-- SELECT id FROM customers WHERE last_name = 'George';
-- SELECT * FROM orders WHERE customer_id = 1;
-- SELECT * FROM orders WHERE customer_id = (SELECT id FROM customers WHERE last_name = 'George');

 -- To perform a (kind of useless) cross join:
-- SELECT * FROM customers, orders;

-- Our first inner join!
-- SELECT * FROM customers JOIN orders ON orders.customer_id = customers.id;
-- SELECT first_name, last_name, order_date, amount FROM customers JOIN orders ON orders.customer_id = customers.id;

-- -- The order doesn't matter here:
-- SELECT * FROM orders JOIN customers ON customers.id = orders.customer_id;

-- SELECT first_name, last_name, SUM(amount) AS total FROM customers JOIN orders ON orders.customer_id = customers.id GROUP BY first_name , last_name ORDER BY total;

-- left join

-- SELECT first_name, last_name, order_date, amount FROM customers LEFT JOIN orders ON orders.customer_id = customers.id;
-- SELECT order_date, amount, first_name, last_name FROM orders LEFT JOIN customers ON orders.customer_id = customers.id;

-- SELECT first_name,last_name,IFNULL(SUM(amount), 0) AS money_spent FROM customers LEFT JOIN orders ON customers.id = orders.customer_id GROUP BY first_name , last_name;

-- right join

-- SELECT first_name, last_name, order_date, amount FROM customers RIGHT JOIN orders ON customers.id = orders.customer_id;

-- on delete casecade

-- drop table orders;
-- drop table customers;

-- CREATE TABLE customers (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     email VARCHAR(50)
-- );

-- CREATE TABLE orders (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     order_date DATE,
--     amount DECIMAL(8 , 2 ),
--     customer_id INT,
--     FOREIGN KEY (customer_id)
--         REFERENCES customers (id)
--         ON DELETE CASCADE
-- );
-- INSERT INTO customers (first_name, last_name, email) 
-- VALUES ('Boy', 'George', 'george@gmail.com'),
--        ('George', 'Michael', 'gm@gmail.com'),
--        ('David', 'Bowie', 'david@gmail.com'),
--        ('Blue', 'Steele', 'blue@gmail.com'),
--        ('Bette', 'Davis', 'bette@aol.com');
--               
-- INSERT INTO orders (order_date, amount, customer_id)
-- VALUES ('2016-02-10', 99.99, 1),
--        ('2017-11-11', 35.50, 1),
--        ('2014-12-12', 800.67, 2),
--        ('2015-01-03', 12.50, 2),
--        ('1999-04-11', 450.25, 5);

-- select * from orders;
-- delete from customers where last_name='George';
-- select * from customers;
-- select * from orders;

-- excercise

-- CREATE TABLE students (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50)
-- );
-- CREATE TABLE papers (
--     title VARCHAR(50),
--     grade INT,
--     student_id INT,
--     FOREIGN KEY (student_id) REFERENCES students (id)
-- );

-- INSERT INTO students (first_name) VALUES 
-- ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

-- INSERT INTO papers (student_id, title, grade ) VALUES
-- (1, 'My First Book Report', 60),
-- (1, 'My Second Book Report', 75),
-- (2, 'Russian Lit Through The Ages', 94),
-- (2, 'De Montaigne and The Art of The Essay', 98),
-- (4, 'Borges and Magical Realism', 89);

-- select * from students;
-- select * from papers;

-- SELECT first_name, title, grade FROM students JOIN papers ON papers.student_id = students.id ORDER BY grade DESC;
-- SELECT first_name, title, grade FROM students LEFT JOIN papers ON papers.student_id = students.id;
-- SELECT first_name, IFNULL(title, 'MISSING'), IFNULL(grade, 0)FROM students LEFT JOIN papers ON papers.student_id = students.id;
-- SELECT first_name, IFNULL(AVG(grade), 0) AS average FROM students LEFT JOIN papers ON students.id = papers.student_id GROUP BY first_name ORDER BY average DESC;
-- SELECT first_name,IFNULL(AVG(grade), 0) AS average,
--     CASE
--         WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'passing'
--         ELSE 'failing'
--     END AS passing_status FROM students LEFT JOIN papers ON students.id = papers.student_id GROUP BY first_name ORDER BY average DESC;

-- many to many
-- create database tv_db;
-- use tv_db;
-- CREATE TABLE reviewers (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE series (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     title VARCHAR(100),
--     released_year YEAR,
--     genre VARCHAR(100)
-- );

-- CREATE TABLE reviews (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     rating DECIMAL(2 , 1 ),
--     series_id INT,
--     reviewer_id INT,
--     FOREIGN KEY (series_id)
--         REFERENCES series (id),
--     FOREIGN KEY (reviewer_id)
--         REFERENCES reviewers (id)
-- );

-- INSERT INTO series (title, released_year, genre) VALUES
--     ('Archer', 2009, 'Animation'),
--     ('Arrested Development', 2003, 'Comedy'),
--     ("Bob's Burgers", 2011, 'Animation'),
--     ('Bojack Horseman', 2014, 'Animation'),
--     ("Breaking Bad", 2008, 'Drama'),
--     ('Curb Your Enthusiasm', 2000, 'Comedy'),
--     ("Fargo", 2014, 'Drama'),
--     ('Freaks and Geeks', 1999, 'Comedy'),
--     ('General Hospital', 1963, 'Drama'),
--     ('Halt and Catch Fire', 2014, 'Drama'),
--     ('Malcolm In The Middle', 2000, 'Comedy'),
--     ('Pushing Daisies', 2007, 'Comedy'),
--     ('Seinfeld', 1989, 'Comedy'),
--     ('Stranger Things', 2016, 'Drama');
--  
--  
-- INSERT INTO reviewers (first_name, last_name) VALUES
--     ('Thomas', 'Stoneman'),
--     ('Wyatt', 'Skaggs'),
--     ('Kimbra', 'Masters'),
--     ('Domingo', 'Cortes'),
--     ('Colt', 'Steele'),
--     ('Pinkie', 'Petit'),
--     ('Marlon', 'Crafford');
--     
--  
-- INSERT INTO reviews(series_id, reviewer_id, rating) VALUES
--     (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
--     (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
--     (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
--     (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
--     (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
--     (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
--     (7,2,9.1),(7,5,9.7),
--     (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
--     (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
--     (10,5,9.9),
--     (13,3,8.0),(13,4,7.2),
--     (14,2,8.5),(14,3,8.9),(14,4,8.9);  

-- show tables;
-- select * from reviewers;
-- select * from reviews;
-- select * from series;

-- SELECT title, rating FROM series JOIN reviews ON series.id = reviews.series_id;
-- SELECT title, ROUND(AVG(rating), 2) AS avg_rating FROM series JOIN reviews ON series.id = reviews.series_id GROUP BY title ORDER BY avg_rating;
-- SELECT first_name, last_name, rating FROM reviewers JOIN reviews ON reviews.reviewer_id = reviewers.id;

-- SELECT title AS unreviewed_series FROM series LEFT JOIN reviews ON series.id = reviews.series_id WHERE rating IS NULL;
-- SELECT title AS unreviewed_series FROM reviews RIGHT JOIN series ON series.id = reviews.series_id WHERE rating IS NULL;
-- SELECT genre, ROUND(AVG(rating), 2) AS avg_rating FROM series JOIN reviews ON series.id = reviews.series_id GROUP BY genre;

-- USING CASE 
-- SELECT 
--     first_name,
--     last_name,
--     COUNT(rating) AS count,
--     IFNULL(MIN(rating), 0) AS min,
--     IFNULL(MAX(rating), 0) AS max,
--     ROUND(IFNULL(AVG(rating), 0), 2) AS average,
--     CASE
--         WHEN COUNT(rating) >= 10 THEN 'POWERUSER'
--         WHEN COUNT(rating) > 0 THEN 'ACTIVE'
--         ELSE 'INACTIVE'
--     END AS status
-- FROM
--     reviewers
--         LEFT JOIN
--     reviews ON reviewers.id = reviews.reviewer_id
-- GROUP BY first_name , last_name;

-- USING IF 
-- SELECT 
--     first_name,
--     last_name,
--     COUNT(rating) AS count,
--     IFNULL(MIN(rating), 0) AS min,
--     IFNULL(MAX(rating), 0) AS max,
--     ROUND(IFNULL(AVG(rating), 0), 2) AS average,
--     IF(COUNT(rating) > 0,
--         'ACTIVE',
--         'INACTIVE') AS status
-- FROM
--     reviewers
--         LEFT JOIN
--     reviews ON reviewers.id = reviews.reviewer_id
-- GROUP BY first_name , last_name;

-- SELECT 
--     title,
--     rating,
--     CONCAT(first_name, ' ', last_name) AS reviewer
-- FROM
--     reviews
--         INNER JOIN
--     series ON reviews.series_id = series.id
--         INNER JOIN
--     reviewers ON reviews.reviewer_id = reviewers.id;



-- SELECT 
--     title,
--     rating,
--     CONCAT(first_name, ' ', last_name) AS reviewer
-- FROM
--     series
--         INNER JOIN
--     reviews ON reviews.series_id = series.id
--         INNER JOIN
--     reviewers ON reviews.reviewer_id = reviewers.id;



-- SELECT 
--     title,
--     rating,
--     CONCAT(first_name, ' ', last_name) AS reviewer
-- FROM
--     reviewers
--         INNER JOIN
--     reviews ON reviews.reviewer_id = reviewers.id
--         INNER JOIN
--     series ON reviews.series_id = series.id;

-- INSTEAD OF TYPING THIS QUERY ALL THE TIME...
-- SELECT 
--     title, released_year, genre, rating, first_name, last_name
-- FROM
--     reviews
--         JOIN
--     series ON series.id = reviews.series_id
--         JOIN
--     reviewers ON reviewers.id = reviews.reviewer_id;

-- WE CAN CREATE A VIEW:
-- CREATE VIEW full_reviews AS
-- SELECT title, released_year, genre, rating, first_name, last_name FROM reviews
-- JOIN series ON series.id = reviews.series_id
-- JOIN reviewers ON reviewers.id = reviews.reviewer_id;

-- NOW WE CAN TREAT THAT VIEW AS A VIRTUAL TABLE 
-- (AT LEAST WHEN IT COMES TO SELECTING)
-- SELECT * FROM full_review;

-- CREATE VIEW ordered_series AS
-- SELECT * FROM series ORDER BY released_year;

-- CREATE OR REPLACE VIEW ordered_series AS
-- SELECT * FROM series ORDER BY released_year DESC;

-- ALTER VIEW ordered_series AS
-- SELECT * FROM series ORDER BY released_year;

-- DROP VIEW ordered_series;

-- SELECT title, AVG(rating),COUNT(rating) AS review_count FROM full_reviews GROUP BY title HAVING COUNT(rating) > 1;

-- SELECT title, AVG(rating) FROM full_reviews GROUP BY title WITH ROLLUP;

 -- SELECT title, COUNT(rating) FROM full_reviews GROUP BY title WITH ROLLUP;

 -- SELECT released_year, genre, AVG(rating) FROM full_reviews GROUP BY released_year , genre WITH ROLLUP;
 -- SELECT first_name, released_year, genre, AVG(rating) FROM full_reviews GROUP BY released_year , genre , first_name WITH ROLLUP;
 
 -- To View Modes:
-- SELECT @@GLOBAL.sql_mode;
-- SELECT @@SESSION.sql_mode;

-- To Set Them:
-- SET GLOBAL sql_mode = '';-- diseable all moods
-- SET GLOBAL sql_mode = 'modes';
-- SET SESSION sql_mode = 'modes';

-- window function--

-- CREATE TABLE employees (
--     emp_no INT PRIMARY KEY AUTO_INCREMENT,
--     department VARCHAR(20),
--     salary INT
-- );

-- INSERT INTO employees (department, salary) VALUES
-- ('engineering', 80000),
-- ('engineering', 69000),
-- ('engineering', 70000),
-- ('engineering', 103000),
-- ('engineering', 67000),
-- ('engineering', 89000),
-- ('engineering', 91000),
-- ('sales', 59000),
-- ('sales', 70000),
-- ('sales', 159000),
-- ('sales', 72000),
-- ('sales', 60000),
-- ('sales', 61000),
-- ('sales', 61000),
-- ('customer service', 38000),
-- ('customer service', 45000),
-- ('customer service', 61000),
-- ('customer service', 40000),
-- ('customer service', 31000),
-- ('customer service', 56000),
-- ('customer service', 55000);


-- SELECT AVG(salary) FROM employees;
-- SELECT AVG(salary) OVER() FROM employees;-- get the avg for all the rows
 -- SELECT emp_no, department, salary, AVG(salary) OVER() FROM employees;

-- SELECT 
--     emp_no, 
--     department, 
--     salary, 
--     MIN(salary) OVER(),
--     MAX(salary) OVER()
-- FROM employees;
--     
-- 
-- SET SESSION sql_mode = 'ONLY_FULL_GROUP_BY';

-- SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

    
-- SELECT 
--     emp_no, department, salary, MIN(salary), MAX(salary)
-- FROM
--     employees;

-- partition by

-- SELECT 
--     emp_no, 
--     department, 
--     salary, 
--     AVG(salary) OVER(PARTITION BY department) AS dept_avg,
--     AVG(salary) OVER() AS company_avg
-- FROM employees;

-- SELECT 
--     emp_no, 
--     department, 
--     salary, 
--     COUNT(*) OVER(PARTITION BY department) as dept_count
-- FROM employees;

-- SELECT 
--     emp_no, 
--     department, 
--     salary, 
--     SUM(salary) OVER(PARTITION BY department) AS dept_payroll,
--     SUM(salary) OVER() AS total_payroll
-- FROM employees;


-- SELECT 
--     emp_no, 
--     department, 
--     salary, 
--     SUM(salary) OVER(PARTITION BY department ORDER BY salary) AS rolling_dept_salary,
--     SUM(salary) OVER(PARTITION BY department) AS total_dept_salary
-- FROM employees;
-- SELECT 
--     emp_no, 
--     department, 
--     salary, 
--     MIN(salary) OVER(PARTITION BY department ORDER BY salary DESC) as rolling_min
-- FROM employees;

-- rank
-- SELECT 
--     emp_no, 
--     department, 
--     salary, 
--     rank() over(order by salary desc) as overall_salaru_rank
-- FROM employees;

-- SELECT 
--     emp_no, 
--     department, 
--     salary, 
--     rank() over(partition by department order by salary desc)as dept_salary_rank,
--     rank() over(order by salary desc) as overall_salaru_rank
-- FROM employees;

-- SELECT 
--     emp_no, 
--     department, 
--     salary, 
--     rank() over(partition by department order by salary desc)as dept_salary_rank,
--     rank() over(order by salary desc) as overall_salaru_rank
-- FROM employees order by department;

-- SELECT 
--     emp_no, 
--     department, 
--     salary,
--     ROW_NUMBER() OVER(PARTITION BY department ORDER BY SALARY DESC) as dept_row_number,
--     RANK() OVER(PARTITION BY department ORDER BY SALARY DESC) as dept_salary_rank,
--     RANK() OVER(ORDER BY salary DESC) as overall_rank,
--     DENSE_RANK() OVER(ORDER BY salary DESC) as overall_dense_rank,
--     ROW_NUMBER() OVER(ORDER BY salary DESC) as overall_num
-- FROM employees ORDER BY overall_rank;


-- SELECT 
--     emp_no, 
--     department, 
--     salary,
--     NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
-- FROM employees;

-- SELECT 
--     emp_no, 
--     department, 
--     salary,
--     NTILE(4) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_quartile,
-- 	NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
-- FROM employees;


-- SELECT 
--     emp_no, 
--     department, 
--     salary,
--     FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary DESC) as highest_paid_dept,
--     FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC) as highest_paid_overall
-- FROM employees;


-- SELECT 
--     emp_no, 
--     department, 
--     salary,
--     salary - LAG(salary) OVER(ORDER BY salary DESC) as salary_diff
-- FROM employees;-- lag previous salary

-- SELECT 
--     emp_no, 
--     department, 
--     salary,
--     salary - LEAD(salary) OVER(PARTITION BY department ORDER BY salary DESC) as dept_salary_diff
-- FROM employees;-- lead : next rows salary













