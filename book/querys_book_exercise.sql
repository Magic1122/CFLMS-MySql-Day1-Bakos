CREATE DATABASE book_store;

CREATE TABLE customer(
            customer_id INT PRIMARY KEY, 
            first_name VARCHAR(55), 
            last_name VARCHAR(55), 
            address VARCHAR(55), 
            phone INT
);

CREATE TABLE rent(
            rent_id INT PRIMARY KEY, 
            rent_date_strt DATE, 
            rent_date_end DATE, 
            fk_customer_id INT,
            FOREIGN KEY(fk_customer_id) REFERENCES customer(customer_id) ON DELETE SET NULL

);

CREATE TABLE book(
            book_id INT PRIMARY KEY, 
            book_title VARCHAR(55), 
            book_author VARCHAR(55), 
            fk_rent_id INT, 
            FOREIGN KEY(fk_rent_id) REFERENCES rent(rent_id) ON DELETE SET NULL
);

CREATE TABLE library(
            library_id INT PRIMARY KEY, 
            library_name VARCHAR(55), 
            library_address VARCHAR(55), 
            fk_book_id INT, 
            FOREIGN KEY(fk_book_id) REFERENCES book(book_id) ON DELETE SET NULL
);

INSERT INTO customer VALUES(1, 'John', 'Doe', 'Some Address 101', 06654841510);
INSERT INTO rent VALUES(101, '2020-06-01', '2020-07-01', 1);
INSERT INTO book VALUES(100, 'Some Nice Book', 'Best Author Ever', 101);
INSERT INTO library VALUES(1001, 'City Library', 'Library Street 1', 100);

-- To remove foreign key
SHOW CREATE TABLE book;
ALTER TABLE library DROP FOREIGN KEY library_ibfk_1;

ALTER TABLE library DROP COLUMN fk_book_id;

ALTER TABLE book ADD COLUMN fk_library_id int;

ALTER TABLE book
ADD FOREIGN KEY (fk_library_id) REFERENCES library(library_id);

SELECT * FROM customer;

INSERT INTO book(fk_library_id) VALUES(1001);

INSERT INTO customer VALUES(2, 'Johny', 'Doey', 'Some Address 202', 06651441510);
INSERT INTO rent VALUES(102, '2020-06-01', '2020-07-01', 1);
INSERT INTO book VALUES(101, 'Another Nice Book', 'Another Good Ever', 102, 1001);

