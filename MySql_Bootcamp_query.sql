show DATABASES;
create DATABASE hello_world_db;
show DATABASES;
DROP DATABASE hello_world_db;
SHOW DATABASES;
create DATABASE hello_world_db;
USE hello_world_db;
show DATABASES;
USE hello_world_db;

CREATE TABLE cats  
  (  
     name VARCHAR(100), 
     age  INT  
  );  
  
  SELECT * from cats;
  
  select * from cats;
  insert into cats(name, age)
  values ('Blue', 1);

insert into cats (name, age)
values ('Draco', 11),
		('Peanut', 2),
        ('Butter', 4),
        ('Jelly', 7);
  
create table people(
first_name varchar(20),
last_name varchar(20),
age int);

select * from people;

insert into people values 
("Tina", "Belcher", 13);

insert into people values 
("Bob", "Belcher", 42);

insert into people values 
("Linda", "Belcher", 45),
("Philip", "Frond", 38),
("Calvin", "Fischoeder", 70);

DROP table people;

create table cats2(
name varchar(100) not null,
age int not null);

desc cats2;

create table employees(
id int PRIMARY Key not null AUTO_INCREMENT,
last_name varchar(20) not null,
first_name varchar(20) not null,
middle_name varchar(20) not null,
age int not null,
current_status varchar(20) default 'employed' not null);

desc employees; 


show tables;
drop table cats, cats2;

CREATE TABLE cats 
  ( 
     cat_id INT NOT NULL AUTO_INCREMENT, 
     name   VARCHAR(100), 
     breed  VARCHAR(100), 
     age    INT, 
     PRIMARY KEY (cat_id) 
  ); 

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
select * from cats;

select cat_id from cats;
select name, breed  from cats;

select name, age from cats where breed='Tabby';
select cat_id, age from cats where cat_id=age;

UPDATE cats SET breed='Shorthair' WHERE breed='Tabby'; 
update cats set age=14 where name='Misty';

select * from cats;

update cats set name='Jack'
where name='Jackson';

update cats set breed="British Shorthair" 
where name='Ringo';

update cats set age=12
where breed='Maine Coon';
 
 delete from cats where age=4;
 
 DELETE from cats where age=cat_id;
 
 DELETE from cats;
 
 CREATE DATABASE shirts_db;
 
 use shirts_db;
 
 show TABLES;
 
 CREATE TABLE shirts(
 shirt_id int PRIMARY Key not null AUTO_INCREMENT,
 article varchar(20),
 color varchar(20),
 shirt_size varchar(1),
 last_worn int
 );
 
 desc shirts;
 
 insert into shirts (article, color, shirt_size, last_word) values 
 ("t-shirt", "white", "S", 10);
 
 select * from shirts;
 
 delete from shirts;
 
drop table shirts;

insert into shirts (article, color, shirt_size, last_worn) values
 ("t-shirt", "white", "S", 10),
 ("t-shirt", "green", "S", 200),
 ("polo shirt", "black", "M", 10),
 ("t-shirt", "blue", "S", 50),
 ("t-shirt", "pink", "S", 0),
 ("polo shirt", "red", "M", 5),
 ("tank top", "white", "S", 200),
 ("tank top", "blue", "M", 15);
 
 insert into shirts (article, color, shirt_size, last_worn) values 
 ("polo shirt", "purple", "M", 50);
 
 select article,color from shirts;
 
 select article, color, shirt_size, last_worn from shirts where
 shirt_size='M';
 
 update shirts set shirt_size='L' where
 article='polo shirt';
 
 update shirts set last_worn=0 where
 last_worn=15;
 
 update shirts set shirt_size='XS', color='off white' where
 color='off white';
 
desc shirts;

delete from shirts where last_worn=200;

delete from shirts where article='tank top';

delete from shirts;

drop table shirts;

CREATE DATABASE book_shop;

USE book_shop; 

CREATE TABLE books ( book_id INT NOT NULL AUTO_INCREMENT, title VARCHAR(100), author_fname VARCHAR(100), author_lname VARCHAR(100), released_year INT, stock_quantity INT, pages INT, PRIMARY KEY(book_id) ); 

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages) VALUES ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291), ('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304), ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465), ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198), ('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352), ('The Circle', 'Dave', 'Eggers', 2013, 26, 504), ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634), ('Just Kids', 'Patti', 'Smith', 2010, 55, 304), ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437), ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208), ('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176), ("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526), ('White Noise', 'Don', 'DeLillo', 1985, 49, 320), ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181), ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329), ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343); 
 
 select concat(author_fname," ", author_lname) as 'Full Name' from books;
 
 select reverse(upper("Why does my cat look at me with such hatred?" )) as reverse_string;
 
 SELECT
  REPLACE
  (
  CONCAT('I', ' ', 'like', ' ', 'cats'),
  ' ',
  '-'
  );
  
  select * from books;
  
  select replace(title, ' ', '->') as title from books;
  
  select * from books;
  
  select author_lname as forwards, reverse(author_lname) as backwords from books;
  
  select upper(concat(author_fname, ' ', author_lname)) as 'full name in caps' from books;
  
  select concat(title," was released ", released_year) as blurb from books;
  
  select title, char_length(title) as 'character count' from books;
  
SELECT CONCAT ( SUBSTRING(title, 1, 10), '...') AS 'short title',   
	    concat(author_lname, ",", author_fname) as auhor,
        concat(stock_quantity, " in stock") as quantity
FROM books;  

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
select * from books;

SELECT author_lname FROM books;

SELECT DISTINCT author_lname FROM books;

SELECT title FROM books LIMIT 3;

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0,5;

SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';  

SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%'; 

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____'; 

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__';


select title from books where title like '%stories%';

select * from books;

select title, pages from books ORDER BY pages desc limit 1;

select concat(title, ' - ', released_year) as summary from books order by released_year desc limit 0,3;

select title, author_lname from books where author_lname like '% %';

select title, released_year, stock_quantity from books order by stock_quantity limit 0,3;

select title, author_lname from books ORDER BY author_lname, title;

select concat('MY FAVORITE AUTHOR IS ', Upper(CONCAT(author_fname,' ', author_lname)),'!') as yell from books order by author_lname;

select count(*) from books;

SELECT COUNT(DISTINCT author_fname) FROM books; 

select * from books;

select sum(title) from books;

SELECT COUNT(*) FROM books;

select released_year, count(*) from  books group by released_year;

select sum(stock_quantity) from books;

select author_fname, author_lname, avg(released_year) from books group by author_fname, author_lname;

select concat(author_fname,' ' ,author_lname), pages from books ORDER BY pages desc limit 1 ;

select released_year as year, count(released_year) as '#books', avg(pages) as 'avg pages' from books group by released_year;	




CREATE TABLE items(price DECIMAL(5,2));  

INSERT INTO items(price) VALUES(7);  

INSERT INTO items(price) VALUES(7987654);  

INSERT INTO items(price) VALUES(34.88);  

INSERT INTO items(price) VALUES(298.9999);  

INSERT INTO items(price) VALUES(1.9999);  

SELECT * FROM items; 



CREATE TABLE dogs (name CHAR(5), breed VARCHAR(10));

INSERT INTO dogs (name, breed) VALUES ('bob', 'beagle');

INSERT INTO dogs (name, breed) VALUES ('robby', 'corgi');

INSERT INTO dogs (name, breed) VALUES ('Princess Jane', 'Retriever');

SELECT * FROM dogs;

INSERT INTO dogs (name, breed) VALUES ('Princess Jane', 'Retrievesadfdsafdasfsafr');

SELECT * FROM dogs;


CREATE TABLE thingies (price FLOAT);

INSERT INTO thingies(price) VALUES (88.45);

SELECT * FROM thingies;

INSERT INTO thingies(price) VALUES (8877.45);

SELECT * FROM thingies;

INSERT INTO thingies(price) VALUES (8877665544.45);

SELECT * FROM thingies;



CREATE TABLE people (name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DATETIME);

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

insert into people (name, birthdate, birthtime, birthdt) values
('Micro', curdate(), curtime(), now());

SELECT * FROM people;


CREATE TABLE comments (
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW()
);
INSERT INTO comments (content) VALUES('lol what a funny article');

INSERT INTO comments (content) VALUES('I found this offensive');

select * from comments

select curdate(); 

Select dayofweek(now()); 

Select date_format(now(), '%W'); 

select title,released_year from books where released_year!= 2017;

SELECT title FROM books WHERE title not LIKE 'W%'; 

SELECT title, author_lname FROM books WHERE author_lname = 'Eggers'; 

SELECT title, author_lname FROM books WHERE author_lname = 'eggers';

SELECT title, author_lname FROM books WHERE author_lname = 'eGGers';

SELECT title, author_lname, released_year FROM books WHERE author_lname='Eggers' AND released_year > 2010; 

SELECT * FROM books WHERE author_lname='Eggers' AND released_year > 2010 AND title LIKE '%novel%';

SELECT title, author_lname, released_year FROM books WHERE author_lname='Eggers' || released_year > 2010; 

SELECT title, author_lname, released_year, stock_quantity FROM books WHERE author_lname = 'Eggers' || released_year > 2010 OR stock_quantity > 100; 

SELECT title, released_year FROM books WHERE released_year >= 2004 && released_year <= 2015; 

SELECT title, released_year FROM books WHERE released_year BETWEEN 2004 AND 2015; 
SELECT title, released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2015; 

SELECT CAST('2017-05-02' AS DATETIME);

SELECT title, author_lname FROM books WHERE author_lname='Carver' OR author_lname='Lahiri' OR author_lname='Smith'; 

SELECT title, author_lname FROM books WHERE author_lname IN ('Carver', 'Lahiri', 'Smith'); 

SELECT title, released_year FROM books
WHERE released_year IN (2017, 1985);

SELECT title, released_year FROM books WHERE released_year != 2000 AND released_year != 2002 AND released_year != 2004 AND released_year != 2006 AND released_year != 2008 AND released_year != 2010 AND released_year != 2012 AND released_year != 2014 AND released_year != 2016; 

SELECT title, released_year FROM books WHERE released_year >= 2000 AND released_year NOT IN (2000,2002,2004,2006,2008,2010,2012,2014,2016); 

SELECT title, released_year FROM books 
WHERE released_year >= 2000 AND 
released_year % 2 != 0; 

SELECT title, released_year FROM books 
WHERE released_year >= 2000 AND 
released_year % 2 != 0 ORDER BY released_year; 

SELECT title, released_year, CASE WHEN released_year >= 2000 THEN 'Modern Lit' ELSE '20th Century Lit' END AS GENRE FROM books; 

SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;

SELECT title, released_year,
       CASE 
         WHEN released_year >= 2000 THEN 'Modern Lit'
         ELSE '20th Century Lit'
       END AS GENRE
FROM books;

SELECT title,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;

SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        WHEN stock_quantity BETWEEN 101 AND 150 THEN '***'
        ELSE '****'
    END AS STOCK
FROM books;

SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books; 

select * from books;

select * from books where released_year <1980;

select * from books where 	author_lname='Eggers' or author_lname='Chabon';
SELECT title, author_lname FROM books WHERE author_lname IN ('Eggers','Chabon');


select * from books where author_lname='Lahiri' and released_year>2000;	


select * from books where pages between 100 and 200;

select * from books where author_lname like'C%' or author_lname like'S%';

	select *, 
		case
			when title like '%stories%' then 'Short Stories'
			when title like '%Just Kids%' or title like '%A Heartbreaking Work%' then 'Memoir'
			else 'Novel'
		end as TYPE
	from books;

select title, author_lname, 
	case 
		when count(author_lname) >=2 then concat(count(author_lname), ' books')
		else concat(count(author_lname), ' book')
	end as COUNT
from books group by author_lname;

CREATE TABLE customers( 
id INT AUTO_INCREMENT PRIMARY KEY, 
first_name VARCHAR(100), 
last_name VARCHAR(100),
 email VARCHAR(100) );  
 
CREATE TABLE orders( 
id INT AUTO_INCREMENT PRIMARY KEY, 
order_date DATE, 
amount DECIMAL(8,2), 
customer_id INT, 
FOREIGN KEY(customer_id) REFERENCES customers(id) );

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
       
       select * from customers;
       
       SELECT * FROM customers, orders; 
       
       select * from orders;
       
       SELECT * FROM customers, orders 
WHERE customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount
FROM customers, orders 
    WHERE customers.id = orders.customer_id;
    
    
    SELECT * FROM customers
JOIN orders
    ON customers.id = orders.customer_id;
    
SELECT first_name, last_name, order_date, amount 
FROM customers
JOIN orders
    ON customers.id = orders.customer_id;
    
    SELECT *
FROM orders
JOIN customers
    ON customers.id = orders.customer_id;
    
    SELECT * FROM customers  
JOIN orders  
ON customers.id = orders.id; 


SELECT first_name, last_name, order_date, amount 
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
ORDER BY order_date;

SELECT 
    first_name, 
    last_name, 
    SUM(amount) AS total_spent
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;


SELECT * FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id;
    

SELECT first_name, last_name, order_date, amount FROM customers 
LEFT JOIN orders  
  ON customers.id = orders.customer_id;  
  
  
  SELECT 
    first_name, 
    last_name,
    IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;

SELECT * FROM customers
LEFT JOIN orders
	ON customers.id = orders.customer_id;

SELECT * FROM customers
INNER JOIN orders
	ON customers.id = orders.customer_id;
    
SELECT * FROM customers
RIGHT JOIN orders
	ON customers.id = orders.customer_id;
    
SELECT 
    IFNULL(first_name,'MISSING') AS first, 
    IFNULL(last_name,'USER') as last, 
    order_date, 
    amount, 
    SUM(amount)
FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY first_name, last_name;

SELECT * FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id;
    
    SELECT * FROM orders
RIGHT JOIN customers
    ON customers.id = orders.customer_id; 
    
SELECT * FROM orders
LEFT JOIN customers
    ON customers.id = orders.customer_id;    
    
SELECT * FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id;
    
    
SELECT * FROM orders
INNER JOIN customers
	ON customers.id = orders.customer_id;
    
    
create table students (
id int primary key AUTO_INCREMENT,
first_name VARCHAR(100)
);

create table papers (
title VARCHAR(100),
grade int,
student_id int,
FOREIGN KEY (student_id) references students(id) on delete cascade
);

INSERT INTO students (first_name) VALUES 
('Caleb'), 
('Samantha'), 
('Raj'), 
('Carlos'), 
('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

select first_name, title, grade from students
Inner Join papers
on students.id=papers.student_id
order by first_name desc;


select first_name, title, grade from students
left Join papers
on students.id=papers.student_id;

select 
		first_name, 
		ifnull(title,'MISSING') as title, 
        ifnull(grade, '0') as grade
from students
left Join papers
on students.id=papers.student_id;


select 
		first_name, 
		ifnull(avg(grade),0) as average
from students
left Join papers
on students.id=papers.student_id
group by first_name;


select 
		first_name, 
		ifnull(avg(grade),0) as average,
        case
			when avg(grade) > 75 then "PASSING"
            else "FAILING"
		end as passing_status
from students
left Join papers
on students.id=papers.student_id
group by first_name
order by avg(grade) desc;

SELECT first_name, 
       Ifnull(Avg(grade), 0) AS average, 
       CASE 
         WHEN Avg(grade) IS NULL THEN 'FAILING' 
         WHEN Avg(grade) >= 75 THEN 'PASSING' 
         ELSE 'FAILING' 
       end                   AS passing_status 
FROM   students 
       LEFT JOIN papers 
              ON students.id = papers.student_id 
GROUP  BY students.id 
ORDER  BY average DESC;

create DATABASE ReviewersMovies;
drop database reviewrsMovies;

use ReviewersMovies;

create table reviewers(
	id int AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(100),
    last_name varchar(100)
);

create table series(
id int AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100),
released_year year(4),
genre VARCHAR(100)
);

drop table seriers;
INSERT INTO series (title, released_year, genre) VALUES
    ('Archer', 2009, 'Animation'),
    ('Arrested Development', 2003, 'Comedy'),
    ("Bob's Burgers", 2011, 'Animation'),
    ('Bojack Horseman', 2014, 'Animation'),
    ("Breaking Bad", 2008, 'Drama'),
    ('Curb Your Enthusiasm', 2000, 'Comedy'),
    ("Fargo", 2014, 'Drama'),
    ('Freaks and Geeks', 1999, 'Comedy'),
    ('General Hospital', 1963, 'Drama'),
    ('Halt and Catch Fire', 2014, 'Drama'),
    ('Malcolm In The Middle', 2000, 'Comedy'),
    ('Pushing Daisies', 2007, 'Comedy'),
    ('Seinfeld', 1989, 'Comedy'),
    ('Stranger Things', 2016, 'Drama');


INSERT INTO reviewers (first_name, last_name) VALUES
    ('Thomas', 'Stoneman'),
    ('Wyatt', 'Skaggs'),
    ('Kimbra', 'Masters'),
    ('Domingo', 'Cortes'),
    ('Colt', 'Steele'),
    ('Pinkie', 'Petit'),
    ('Marlon', 'Crafford');
    
    
    select * from reviewers;
    
    create table reviews(
    id int AUTO_INCREMENT primary key,
    rating decimal(2,1),
    series_id int,
    reviewer_id int,
    FOREIGN KEY (series_id) REFERENCES series(id),
    FOREIGN KEY (reviewer_id) REFERENCES reviewers(id)
    );
    
    

    
    INSERT INTO reviews(series_id, reviewer_id, rating) VALUES
    (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
    (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
    (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
    (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
    (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
    (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
    (7,2,9.1),(7,5,9.7),
    (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
    (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
    (10,5,9.9),
    (13,3,8.0),(13,4,7.2),
    (14,2,8.5),(14,3,8.9),(14,4,8.9);
    
    select * from reviews;
    
select title, rating from series
join reviews
	on series.id = reviews.series_id;
    
    
select title, avg(rating) as avg_rating from series
join reviews
	on series.id = reviews.series_id
GROUP BY series.id
ORDER BY avg_rating;

select first_name, last_name, rating from reviewers
JOIN reviews 
	on reviewers.id = reviews.reviewer_id;
    
    
select title as unreviewed_series 
from series
left join reviews 
	on series.id= reviews.series_id
where rating is null;

select genre, 
		round(avg(rating),2) as avg_rating 
from series
join reviews
	on series.id = reviews.series_id
GROUP BY genre;


select 
	first_name,
    last_name,
    count(rating) as COUNT,
    ifnull(min(rating),0) as MIN,
    ifnull(max(rating),0) as MAX,
    ifnull(avg(rating),0)  as AVG,
    case 
		when count(rating) >=1 then 'ACTIVE'
        else 'INACTIVE'
    end as STATUS
from reviewers
left join reviews
	on reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;


select 
	first_name,
    last_name,
    count(rating) as COUNT,
    ifnull(min(rating),0) as MIN,
    ifnull(max(rating),0) as MAX,
    round(ifnull(avg(rating),0),2)  as AVG,
    case 
		when count(rating) >=10 then 'POWER USER'
        when count(rating) >=0 then 'ACTIVE'
        else 'INACTIVE'
    end as STATUS
from reviewers
left join reviews
	on reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;


select title,
	rating,
    concat(first_name, ' ', last_name) as reviwer
from reviewers
join reviews
	on reviewers.id = reviews.reviewer_id
join series 
	on series.id = reviews.series_id
ORDER BY title;
    