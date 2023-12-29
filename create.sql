CREATE TABLE show (
    show_id SERIAL PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    release_date DATE,
    description TEXT,
    rating DECIMAL(3, 1)
);

CREATE TABLE genre (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL
);

CREATE TABLE show_genre (
    show_id INT,
    genre_id INT,
    PRIMARY KEY (show_id, genre_id),
    FOREIGN KEY (show_id) REFERENCES show(show_id),
    FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);

CREATE TABLE actor (
    actor_id SERIAL PRIMARY KEY,
    actor_name VARCHAR(100) NOT NULL
);

CREATE TABLE show_actor (
    show_id INT,
    actor_id INT,
    PRIMARY KEY (show_id, actor_id),
    FOREIGN KEY (show_id) REFERENCES show(show_id),
    FOREIGN KEY (actor_id) REFERENCES actor(actor_id)
);
