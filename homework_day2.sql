CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
);

CREATE TABLE tickets(
	ticket_no SERIAL PRIMARY KEY,
	quantity INTEGER,
	amount NUMERIC(5,2),
	movie_id INTEGER NOT NULL, 
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
	customer_id INTEGER NOT NULL, 
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_title VARCHAR(50),
	movie_desc VARCHAR(225),
	rating VARCHAR(5)
);

CREATE TABLE concession(
	order_no SERIAL PRIMARY KEY,
	amount NUMERIC (5,2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE customer_ticket(
	customer_ticket_id SERIAL PRIMARY KEY,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
	customer_id INTEGER NOT NULL
);

INSERT INTO tickets(
	quantity,
	amount,
	customer_id,
	movie_id
)
VALUES(
	1,
	5.99,
	1,
	1
),
(
	3,
	15.99,
	1,
	1
);

INSERT INTO customer_ticket(
	customer_ticket_id,
	movie_id,
	customer_id
)
VALUES(
	5,
	4,
	1
),
(
	3,
	2,
	1
);

