use justin;

describe albums;

ALTER TABLE albums
    ADD CONSTRAINT name_artist UNIQUE (name, artist);

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 47.3, 'Pop,rock, R&B');


describe board_games;

describe departments;

describe departments;

describe dept_manager;

describe employees;

describe my_kids;

describe quotes;

describe quotes;

describe salaries;

describe titles;
