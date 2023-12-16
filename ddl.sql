CREATE TABLE customer(
    customer_id serial primary key,
    customer_name VARCHAR(50),
    email VARCHAR NOT NULL
)

CREATE TABLE tickets(
    ticket_id serial primary key,
    movie_id serial,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
)

CREATE TABLE movie(
    movie_id serial primary key,
    rating VARCHAR(50),
    actors VARCHAR NOT NULL
)

CREATE TABLE concession(
    ticket_id serial,
    customer_id serial,
    movie_id serial,
    FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
    
)