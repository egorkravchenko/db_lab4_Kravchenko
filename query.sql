-- Рейтинг кожного шоу
SELECT title, rating
FROM show
ORDER BY rating DESC;


-- Кількість шоу кожного жанру
SELECT genre_name, COUNT(*) as count
FROM genre g
JOIN show_genre sg ON g.genre_id = sg.genre_id
GROUP BY genre_name;


-- Кількість акторів у кожному шоу
SELECT s.title, COUNT(sa.actor_id) as actor_count
FROM show s
LEFT JOIN show_actor sa ON s.show_id = sa.show_id
GROUP BY s.title;