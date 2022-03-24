DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(100) DEFAULT 'NONE',
                        name VARCHAR(100) NOT NULL,
                        release_date INT(4),
                        sales FLOAT,
                        genre VARCHAR(100),
                        PRIMARY KEY (id)
);