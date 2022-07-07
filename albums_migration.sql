USE codeup_test_db;
    DROP TABLE IF EXISTS albums;
CREATE TABLE albums
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(100),
    name         VARCHAR(100),
    release_date YEAR UNSIGNED,
    sales        DECIMAL(3,1) UNSIGNED,
    genre        VARCHAR(100),
    PRIMARY KEY (id)
);


