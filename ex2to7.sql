DROP TABLE person

CREATE TABLE person (
	id INTEGER PRIMARY KEY,
	first_name TEXT,
	last_name TEXT,
	age INTEGER
);

CREATE TABLE pet (
	id INTEGER PRIMARY KEY,
	name TEXT,
	breed TEXT,
	age INTEGER,
	dead INTEGER

);

CREATE TABLE person_pet (
	person_id INTEGER,
	pet_id INTEGER
);

INSERT INTO person (id, first_name, last_name, age)
	VALUES (0, "Zed", "Shaw", 37);

INSERT INTO pet (id, name, breed, age, dead)
	VALUES (0, "Fluffy", "Unicorn", 1000, 0);

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);

INSERT INTO person (id, first_name, last_name, age)
	VALUES (1, "Zahid", "Mitha", 22);

INSERT INTO pet (id, name, breed, age, dead)
	VALUES (2, "Bowser", "Turtle", 42, 0);

INSERT INTO person (id, first_name, last_name, age)
	VALUES (2, "Al", "Frankl", 22);

INSERT INTO person (id, first_name, last_name, age)
	VALUES (3, "Felix", "Kenton", 49);

INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0,1);

INSERT INTO person_pet VALUES (1, 2);
INSERT INTO person_pet VALUES (2, 2);


SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != "Zed";

SELECT * FROM pet WHERE age > 10;

SELECT * FROM person WHERE age > (SELECT age FROM person WHERE first_name = "Zahid");

SELECT * FROM person WHERE age < (SELECT age from person WHERE first_name = "Zahid");

SELECT * FROM person WHERE age > 22 AND last_name != "Mitha";

SELECT age, breed FROM pet WHERE dead != 0 AND (age =10 OR age = 42);

SELECT pet.id, pet.name, pet.age, pet.dead
	FROM pet, person_pet, person
	WHERE
	pet.id = person_pet.pet_id AND
	person_pet.person_id = person.id AND
	person.id = 1;
	/* person.first_name = "Zahid"; */


/* make sure there's dead pets */
SELECT name, age FROM pet where dead = 1;

/* aww poor robot */
DELETE FROm pet WHERE dead = 1;

/* make sure the robot is gone */
SELECT * FROM pet;

/* let's resurrect the robot */
INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 0);

/* the robot LIVES! */
SELECT * FROM pet;