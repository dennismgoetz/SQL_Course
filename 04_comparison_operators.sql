#################################################################################
# NEW QUERY (all engineers hired before 28.02.2002)
#################################################################################
SELECT
*
FROM titles

WHERE title in ("Engineer", "Senior Engineer", "Assistant Engineer")
and from_date < "2002-02-28";


#################################################################################
# NEW QUERY (all engineers hired on 28.02.2002 or earlier)
#################################################################################
SELECT
*
FROM titles

WHERE title in ("Engineer", "Senior Engineer", "Assistant Engineer")
and from_date <= "2002-02-28";


#################################################################################
# NEW QUERY (all engineers hired after 28.02.2002)
#################################################################################
SELECT
*
FROM titles

WHERE title in ("Engineer", "Senior Engineer", "Assistant Engineer")
and from_date > "2002-02-28";


#################################################################################
# NEW QUERY (all engineers not hired on 28.02.2002)
#################################################################################
SELECT
*
FROM titles

WHERE title in ("Engineer", "Assistant Engineer", "Senior Engineer")
and from_date != "2002-02-28";


#################################################################################
# NEW QUERY (between operator: all engineer hired in 2002)
#################################################################################
SELECT
*
FROM titles

WHERE title in ("Engineer", "Assistant Engineer", "Senior Engineer")
and from_date between "2002-01-01" and "2002-12-31";


#################################################################################
# NEW QUERY (between operator: all other employees hired in 2002)
#################################################################################
SELECT
*
FROM titles

WHERE title not in ("Engineer", "Assistant Engineer", "Senior Engineer")
and from_date between "2002-01-01" and "2002-12-31";


#################################################################################
# NEW QUERY (task: all employees that have an income of more than 100.000€ p.a.)
#################################################################################
SELECT
*
FROM salaries

WHERE salary > 100000
and to_date = "9999-01-01";


#################################################################################
# NEW QUERY (like operator: all first names that start with "G")
#################################################################################
SELECT
*
FROM employees

WHERE first_name like "G%"; # Use "%" as wildcard (Platzhalter)


#################################################################################
# NEW QUERY (all first names that start with "G" and end with "a")
#################################################################################
SELECT
*
FROM employees

WHERE first_name like "G%a"; # Use "%" as wildcard (Platzhalter)


#################################################################################
# NEW QUERY (all first names that start with "G" and have four letters)
#################################################################################
SELECT
*
FROM employees

WHERE first_name like "G___"; # Use "_" as a wildcard to define the exact number of letters


#################################################################################
# NEW QUERY (combine "%" and "_")
#################################################################################
SELECT
*
FROM employees

WHERE first_name like "G%a_"; # Can return "Gal" or "Giap" e.g.


#################################################################################
# NEW QUERY (another example how to use a wildcard)
#################################################################################
SELECT
*
FROM employees

WHERE hire_date like "1995%" # Returns all employees hired in 1995

