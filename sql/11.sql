/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title in reverse alphabetical order.
 */

SELECT f.film_id, f.title, count(i.inventory_id)
FROM film as f
JOIN inventory AS i ON f.film_id = i.film_id
GROUP BY f.film_id
HAVING f.title ILIKE 'h%'
ORDER BY f.title DESC
