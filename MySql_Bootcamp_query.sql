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