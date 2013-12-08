SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != "Zed";

SELECT * FROM pet WHERE age > 10;

SELECT * FROM person WHERE age > (SELECT age FROM person WHERE first_name = "Zahid");

SELECT * FROM person WHERE age < (SELECT age from person WHERE first_name = "Zahid");

SELECT * FROM person WHERE age > 22 AND last_name != "Mitha";

SELECT age, breed FROM pet WHERE dead != 0 AND (age =10 OR age = 42);

