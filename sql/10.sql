/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */

SELECT f.title, f.film_id, count(a.actor_id) AS actor_count 
FROM film f
JOIN film_actor a ON f.film_id = a.film_id  
GROUP BY f.film_id
ORDER BY actor_count, f.title
