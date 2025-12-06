USE sakila;

# Display the first name and last name of all customers.

select first_name , last_name from customer;

# Show the title and release year of all films.

SELECT title , release_year FROM film;

# Retrieve all columns from the actor table.

SELECT * FROM actor;

# Display the rental date and return date from the rental.

SELECT rental_date , return_date FROM rental;

# Show the name of all stores from the store table.

SELECT  store_id FROM store;

# Show the email address of all customers.

SELECT email FROM customer;

# Display the film title, rental rate and replacement cost from the film table.

SELECT title, rental_rate, replacement_cost FROM film;

# Retrieve the first and last names of staff members.

SELECT first_name, last_name FROM staff;

# List the film IDs and titles of all films that are available in the inventory.

SELECT i.film_id, f.title
FROM film f
JOIN inventory i
ON f.film_id = i.film_id;

# Show the title and language ID of every film.

SELECT title, language_id FROM film;