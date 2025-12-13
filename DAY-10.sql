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

USE sakila;

#WHERE

#1 Films with a rental duration greater than 5 days.

SELECT title,rental_duration FROM film WHERE rental_duration > 5;

#2 Show actors whose first name is "NICK"

SELECT first_name, last_name FROM actor WHERE first_name = "NICK";

#3 Retrive payments where the amount is greater than 5.00.

SELECT amount FROM payment WHERE amount > 5.00;

#4 Get all films released in 2006.

SELECT title, release_year FROM film WHERE release_year = "2006";

#5 Find all films with a rental rate equal to 0.99.

SELECT title, rental_rate FROM film WHERE rental_rate = "0.99";

#6 Show customers whose last name starts with 's'. 

SELECT first_name, last_name FROM customer WHERE last_name LIKE "S%";

#7 Get all payments mode on '2005-07-30'.

SELECT payment_id, customer_id, amount, payment_date FROM payment WHERE DATE (payment_date) = "2005-07-30";

#8 List all actors whoes last name is 'DAVIS'.

SELECT first_name, last_name FROM actor WHERE last_name = "DAVIS";

#9 Retrieve films whose length is greater than 120 minutes.

SELECT title, length FROM film WHERE length > "120 minutes";

#10 Find all films that have a replacement cost greater than 20.00.

SELECT title, replacement_cost FROM film WHERE replacement_cost > "20.00";

#11 Show customers whose first name 'MARY'.

SELECT first_name, last_name FROM customer WHERE first_name = "MARY";

#12 List all films with a rental duration equal to 7 days.

SELECT title, rental_duration FROM film WHERE rental_duration = "7 DAYS";

#13 Retrieve payments where the amount is less than or equal to 2.00.

SELECT payment_id, amount FROM payment WHERE amount <= 2.00;

#14 Get all actors whose actor_id is greater than 150.

SELECT first_name, last_name, actor_id FROM actor WHERE actor_id > "150";

USE sakila;

# DISTINCT (Unique)

#1 List all unique film ratings.

SELECT DISTINCT rating FROM film;

#2 Find distinct cities from the city table.

SELECT DISTINCT city FROM city;

#3 Show all distinct rental durations in the film table.

SELECT DISTINCT rental_duration FROM film;

#4 Display all uique first name of actors.

SELECT DISTINCT first_name FROM actor;

#5 List distinct language_id available in the film table.

SELECT DISTINCT language_id FROM film;

#6 Find all distinct last name of customers.

SELECT DISTINCT last_name FROM customer;

#7 Show unique store IDs from the customer table .

SELECT DISTINCT store_id FROM customer;

#8 Retrieve distinct return dates from the rental table.

SELECT DISTINCT return_date FROM rental;

#9 List all unique titles from the film table.

SELECT DISTINCT title FROM film;

#10 Display distinct staff IDs who processed payments.

SELECT DISTINCT staff_id FROM payment;


#ORDER BY

#1 Display the first 20 films ordered by release year.
#(latest first)
SELECT film_id, title, release_year FROM film ORDER BY release_year DESC LIMIT 20;

#2 Show customers sorted by last name in ascending order.

SELECT customer_id, first_name, last_name FROM customer ORDER BY last_name ASC;

#3 List all actors ordered by first name, descending.

SELECT actor_id, first_name, last_name FROM actor ORDER BY first_name DESC;

#4 Show films ordered by rental rate, then by title.

SELECT film_id, title, rental_rate FROM film ORDER BY rental_rate ASC, title ASC;

#5 Sort all staff members by last update time (descending)

SELECT staff_id, first_name, last_name, last_update FROM staff ORDER BY last_update DESC;

#6 List all films ordered by title in ascending order.

SELECT film_id, title FROM film ORDER BY title ASC;

#7 Show the top 10 longest films ordered by length (descending).

SELECT film_id, title, length FROM film ORDER BY length DESC LIMIT 10;

#8 Display customers sorted by their first name, ascending

SELECT customer_id, first_name, last_name FROM customer ORDER BY first_name ASC;

#9 List films ordered by rental duration (highest first)

SELECT film_id, title, rental_duration FROM film ORDER BY rental_duration DESC LIMIT 1;

#10 Show the latest 15 rentl records by rental_date

SELECT rental_id, rental_date FROM rental ORDER BY rental_date DESC LIMIT 15;

#11 Display payments ordered by amount (highest first)

SELECT payment_id, amount FROM payment ORDER BY amount DESC LIMIT 1;

#12 List films ordered by replacement cost, then by title.

SELECT film_id, title, replacement_cost FROM film ORDER BY replacement_cost ASC, title ASC;

#13 Show customers ordered by create_date (oldest first).

SELECT customer_id, create_date FROM customer ORDER BY create_date DESC;

#14 Display acotrs sorted by last name (Z-A).

SELECT actor_id, first_name, last_name FROM actor ORDER BY last_name DESC;

#15 Show the first 20 payments ordered by payment_date (latest first)

SELECT payment_id, payment_date FROM payment ORDER BY payment_date ASC LIMIT 20;







