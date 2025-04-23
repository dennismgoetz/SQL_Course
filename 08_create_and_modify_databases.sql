#################################################################################
# NEW QUERY (Create and delete a database)
#################################################################################
CREATE DATABASE pets; # New database appears on the left side in Schemas (refresh Schemas)

DROP DATABASE pets; # Database disappears again


#################################################################################
# NEW QUERY (How to create tables)
#################################################################################
# Create the database my_pets, refresh Schemas and then right click on the 
# database in Schemas and select "Set as default Schema"
CREATE DATABASE my_pets;

# Typical way to create a table in SQL 
# CREATE TABLE tabellenname(
#    spalte1 datentyp,
#    spalte2 datentyp,
#    ...
#);

# MOST IMPORTANT DATATYPES IN SQL
# VARCHAR - holds characters of variable length
# INTEGER - whole numbers
# FLOAT - numbers with decimal places
# DATE - Date format YYYY-MM-DD


#################################################################################
# NEW QUERY (Add a table to the existing database)
#################################################################################
CREATE TABLE animals(
	animal_number int,
    animal_name VARCHAR(225), # Define the maximum length within the brackets 
    animal_type VARCHAR(225)
);

# Optionally you can drop the table with the following line
DROP TABLE animals;


#################################################################################
# NEW QUERY (Modify an existing table)
#################################################################################
ALTER TABLE animals
ADD animal_color VARCHAR(225);


#################################################################################
# NEW QUERY (Add data to the animal table and view the table)
#################################################################################
INSERT INTO animals VALUES(1, "Bello", "Dog", "Black");
INSERT INTO animals VALUES(2, "Socke", "Cat", "White");
INSERT INTO animals VALUES(3, "Flecki", "Cat", "Brown");

SELECT *
FROM animals;


#################################################################################
# NEW QUERY (Define a primary key in your table)
#################################################################################
ALTER TABLE animals
ADD PRIMARY KEY (animal_number);


#################################################################################
# NEW QUERY (Modify data in the table)
#################################################################################
UPDATE animals
SET animal_color = "White"
WHERE animal_number = 3;

SELECT *
FROM animals;


#################################################################################
# NEW QUERY (Delete Bello and Socke in the table)
#################################################################################
DELETE FROM animals
WHERE animal_number in (1, 2);

SELECT *
FROM animals;


#################################################################################
# NEW QUERY (Add Bello and Socke again)
#################################################################################
# Add multiple lines in one statement
INSERT INTO animals VALUES 
	(1, "Bello", "Dog", "Black/Brown/White"),
    (2, "Socke", "Cat", "White");

SELECT *
FROM animals;


#################################################################################
# NEW QUERY
#################################################################################
SELECT *
FROM animals

WHERE animal_name in ("Bello", "Flecki");


#################################################################################
# NEW QUERY (Visualize tables with their relationships)
#################################################################################
# Click on "Database" at the top and select "Reverse Engineer..."
# Click "Continue" and enter your password
# Click "Continue" and select the database you want to visualize
# Click "Continue" twice and then "Excecute"
# Click "Continue" and "Finish" to see the database diagram

