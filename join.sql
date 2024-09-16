SELECT person.fornavn, film.tittel, rolle.rolle FROM person
INNER JOIN person_has_rolle_in_film
ON person_has_rolle_in_film.person_id = person.id
INNER JOIN rolle
ON person_has_rolle_in_film.rolle_id = rolle.id
INNER JOIN film
ON person_has_rolle_in_film.film_id = film.id
INNER JOIN film_has_sjanger
ON film_has_sjanger.film_id = film.id
INNER JOIN sjanger
ON film_has_sjanger.sjanger_id = sjanger.id
WHERE sjanger.sjanger = 'Drama' AND film.lengde > '90';