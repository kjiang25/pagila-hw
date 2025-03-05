/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

-- get payment.amount
-- join ON payment.rental_id = rental.rental_id
-- join ON rental.customer_id = customer.customer_id
-- join ON customer.address_id = address.address_id
-- join ON address.city_id = city.city_id
-- join ON city.country_id = country.country_id
-- get country.country

SELECT co.country, SUM(p.amount) AS profit
FROM payment AS p
JOIN rental AS r ON p.rental_id = r.rental_id
JOIN customer AS c ON r.customer_id = c.customer_id
JOIN address AS a ON c.address_id = a.address_id
JOIN city AS ci ON a.city_id = ci.city_id
JOIN country AS co ON ci.country_id = co.country_id
GROUP BY co.country
ORDER BY co.country
