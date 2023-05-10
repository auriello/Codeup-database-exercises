USE codeup_test_db;

--     drop this album if it exists
DROP TABLE IF EXISTS albums;

-- create table with ID, ARTIST,NAME, RELEASE DATE, SALES, GENRE

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(75),
    record_name VARCHAR(255),
    release_date INT,
    sales FLOAT,
    genre VARCHAR(255),
    PRIMARY KEY (id)
);
