SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

SELECT max(birth_date) FROM employee;

SELECT min(birth_date) FROM employee;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT avg(total) FROM invoice;

SELECT t.track_id, playlist_track_id FROM playlist_track pt
JOIN track t ON t.track_id = pt.track_id
WHERE playlist_id = 1 OR playlist_id = 7;

SELECT name FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
WHERE playlist_id = 5;

SELECT p.name, t.name FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
JOIN playlist p ON p.playlist_id = pt.playlist_id;

SELECT t.name, a.title FROM track t
JOIN album a ON a.album_id = t.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';