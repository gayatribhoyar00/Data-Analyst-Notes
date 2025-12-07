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