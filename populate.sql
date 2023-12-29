INSERT INTO show (title, release_date, description, rating)
VALUES
    ('Stranger Things', '2016-07-15', 'A group of kids in a small town uncover a series of supernatural mysteries.', 8.8),
    ('The Crown', '2016-11-04', 'The story of the reign of Queen Elizabeth II.', 8.7),
    ('Narcos', '2015-08-28', 'A drama about the rise and fall of notorious drug lord Pablo Escobar.', 8.8),
    ('Black Mirror', '2011-12-04', 'An anthology series exploring the dark side of technology and its impact on society.', 8.8),
    ('Breaking Bad', '2008-01-20', 'A high school chemistry teacher turned methamphetamine producer teams up with a former student.', 9.5),
    ('The Mandalorian', '2019-11-12', 'A lone bounty hunter navigates the outer reaches of the galaxy.', 8.7),
    ('Stranger Things 2', '2017-10-27', 'The second season of the popular sci-fi series.', 8.7),
    ('Money Heist', '2017-05-02', 'A criminal mastermind recruits eight people with unique abilities to carry out an ambitious plan.', 8.3),
    ('The Witcher', '2019-12-20', 'Geralt of Rivia, a solitary monster hunter, struggles to find his place in a world.', 8.2),
    ('Ozark', '2017-07-21', 'A financial planner relocates his family to the Ozarks to launder money for a Mexican drug cartel.', 8.4);


INSERT INTO genre (genre_name)
VALUES
    ('Drama'),
    ('Sci-Fi'),
    ('Crime'),
    ('Thriller'),
    ('Action'),
    ('Adventure'),
    ('Mystery');

INSERT INTO show_genre (show_id, genre_id)
VALUES
    (1, 2),
    (2, 1),
    (3, 3),
    (4, 4),
    (5, 1),
    (6, 5),
    (7, 2),
    (8, 3),
    (9, 5),
    (1, 6),
    (2, 5),
    (3, 4),
    (4, 6),
    (5, 3),
    (6, 7),
    (7, 6),
    (10, 3);

INSERT INTO actor (actor_name)
VALUES
    ('Millie Bobby Brown'),
    ('Claire Foy'),
    ('Wagner Moura'),
    ('Charlie Brooker'),
    ('Bryan Cranston'),
    ('Pedro Pascal'),
    ('Finn Wolfhard'),
    ('Úrsula Corberó'),
    ('Henry Cavill'),
    ('Jason Bateman');

INSERT INTO show_actor (show_id, actor_id)
VALUES
    (1, 1),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 1),
    (8, 7),
    (9, 8),
    (10, 9),
    (1, 7),
    (1, 8),
    (2, 2),
    (3, 4),
    (4, 5),
    (5, 6),
    (5, 7),
    (6, 8),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);
