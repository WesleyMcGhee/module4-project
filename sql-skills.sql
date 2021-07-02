INSERT INTO artist (name)
VALUES ('Adriana Figuroa'),
('OR3O'),
('Nano');

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee;

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT max(total) FROM invoice;

SELECT min(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT sum(total) FROM invoice;

SELECT * FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE unit_price > .99;

SELECT invoice_date, first_name, last_name FROM invoice i
JOIN customer c ON c.customer_id = i.customer_id;

SELECT c.first_name, c.last_name, e.first_name, e.first_name FROM customer c
JOIN employee e ON employee_id = support_rep_id;

SELECT title, name FROM artist ar
JOIN album al ON ar.artist_id = al.artist_id;