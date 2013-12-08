DELETE FROM pet WHERE id IN (
	SELECT pet.id
	FROM pet, person_pet, person
	WHERE person.id = person_pet.person_id AND
	pet.id = person_pet.pet_id AND
	person.first_name = "Zahid" AND
	pet.dead = 1

);

DELETE FROM person WHERE id IN (
	SELECT person.id
	FROM pet, person_pet, person
	WHERE person.id = person_pet.person_id AND
	pet.id = person_pet.pet_id AND
	pet.dead = 1

);


SELECT * FROM person_pet;

DELETE FROM person_pet WHERE  person_pet.pet_id IN(
	SELECT pet.dead = 1
	FROM pet
);
