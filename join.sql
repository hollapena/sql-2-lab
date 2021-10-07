SELECT * 
FROM invoice
WHERE invoice_id IN (
  SELECT invoice_id 
  FROM invoice_line 
  WHERE unit_price>0.99);

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

SELECT a.title, ar.name
FROM album a
JOIN artist ar 
ON a.artist_id = ar.artist_id;

SELECT pt.track_id
FROM playlist_track pt
JOIN playlist p
ON pt.playlist_id = p.playlist_id
WHERE p.name = 'Music';

SELECT t.name
FROM track t
JOIN playlist_track pt 
ON pt.track_id = t.track_id
WHERE pt.playlist_id IS NOT NULL;
-- Wasn't sure on this one if you wanted a specific playlist id or just all songs that were assigned to playlists.

SELECT t.name, p.name
FROM track t
JOIN playlist_track pt 
ON t.track_id = pt.track_id
JOIN playlist p 
ON p.playlist_id = pt.playlist_id;

SELECT t.name, a.title
FROM track t
JOIN album a 
ON t.album_id = a.album_id 
JOIN genre g
ON t.genre_id = g.genre_id
WHERE g.name='Alternative & Punk';


